import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:mocktail/mocktail.dart';
import 'package:univers_barca/core/error/failure.dart';
import 'package:univers_barca/features/account/data/datasources/account_remote_datasource.dart';
import 'package:univers_barca/features/account/data/repositories/account_repository_impl.dart';
import 'package:univers_barca/features/account/domain/usecases/delete_account_usecase.dart';
import 'package:univers_barca/features/account/presentation/bloc/delete_account_bloc.dart';

import '../../helpers/mocks.dart';

void main() {
  final purgeAt = DateTime.utc(2026, 11, 15);

  group('DeleteAccountUseCase', () {
    test('envoie le mot de confirmation SUPPRIMER', () async {
      final repo = MockAccountRepository();
      when(
        () => repo.deleteAccount(password: 'pw', confirmation: 'SUPPRIMER'),
      ).thenAnswer((_) async => right(purgeAt));
      expect((await DeleteAccountUseCase(repo)(password: 'pw')).toNullable(), purgeAt);
      expect(DeleteAccountUseCase.gracePeriodDays, 30);
    });
  });

  group('AccountRepositoryImpl', () {
    late MockAccountRemoteDataSource remote;
    late MockNetworkInfo network;
    late AccountRepositoryImpl repo;

    setUp(() {
      remote = MockAccountRemoteDataSource();
      network = MockNetworkInfo();
      repo = AccountRepositoryImpl(remote, network);
      when(() => network.isConnected).thenAnswer((_) async => true);
    });

    Future<Failure?> failureFor(int status) async {
      when(
        () => remote.deleteAccount(
          password: any(named: 'password'),
          confirmation: any(named: 'confirmation'),
        ),
      ).thenThrow(AccountApiException(status));
      final r = await repo.deleteAccount(password: 'p', confirmation: 'SUPPRIMER');
      return r.getLeft().toNullable();
    }

    test('hors connexion -> NetworkFailure', () async {
      when(() => network.isConnected).thenAnswer((_) async => false);
      final r = await repo.deleteAccount(password: 'p', confirmation: 'SUPPRIMER');
      expect(r.getLeft().toNullable(), isA<NetworkFailure>());
    });

    test('401 -> INVALID_CREDENTIALS', () async {
      final f = await failureFor(401);
      expect(f, isA<AuthFailure>());
      expect(f!.code, 'INVALID_CREDENTIALS');
    });

    test('429 -> RATE_LIMITED, 422 -> ValidationFailure', () async {
      expect((await failureFor(429))!.code, 'RATE_LIMITED');
      expect(await failureFor(422), isA<ValidationFailure>());
    });
  });

  group('AccountRemoteDataSource', () {
    AccountRemoteDataSource build(http.Client client) => AccountRemoteDataSource(
      ChopperClient(baseUrl: Uri.parse('https://api.test/api/v1'), client: client),
    );

    test('DELETE /users/me avec password et confirmation, parse purgeAt', () async {
      late http.Request sent;
      final ds = build(
        MockClient((req) async {
          sent = req;
          return http.Response(
            jsonEncode({
              'success': true,
              'data': {'purgeAt': purgeAt.toIso8601String()},
            }),
            200,
            headers: {'content-type': 'application/json'},
          );
        }),
      );
      final result = await ds.deleteAccount(password: 'pw', confirmation: 'SUPPRIMER');
      expect(result, purgeAt);
      expect(sent.method, 'DELETE');
      expect(sent.url.path, '/api/v1/users/me');
      expect(jsonDecode(sent.body), {'password': 'pw', 'confirmation': 'SUPPRIMER'});
    });

    test('401 -> AccountApiException(401)', () async {
      final ds = build(
        MockClient(
          (_) async => http.Response(
            jsonEncode({
              'success': false,
              'error': {'code': 'INVALID_CREDENTIALS'},
            }),
            401,
            headers: {'content-type': 'application/json'},
          ),
        ),
      );
      expect(
        ds.deleteAccount(password: 'x', confirmation: 'SUPPRIMER'),
        throwsA(
          isA<AccountApiException>()
              .having((e) => e.statusCode, 'status', 401)
              .having((e) => e.code, 'code', 'INVALID_CREDENTIALS'),
        ),
      );
    });
  });

  group('DeleteAccountBloc', () {
    late MockDeleteAccountUseCase useCase;
    setUp(() => useCase = MockDeleteAccountUseCase());

    blocTest<DeleteAccountBloc, DeleteAccountState>(
      'avertissement -> mot de passe (bloqué si vide) -> confirmation',
      build: () => DeleteAccountBloc(useCase),
      act: (b) => b
        ..add(const DeleteAccountNextPressed())
        ..add(const DeleteAccountNextPressed()) // mot de passe vide : ignoré
        ..add(const DeleteAccountPasswordChanged('pw'))
        ..add(const DeleteAccountNextPressed())
        ..add(const DeleteAccountBackPressed()),
      expect: () => [
        const DeleteAccountState(step: DeleteAccountStep.password),
        const DeleteAccountState(step: DeleteAccountStep.password, password: 'pw'),
        const DeleteAccountState(step: DeleteAccountStep.confirmation, password: 'pw'),
        const DeleteAccountState(step: DeleteAccountStep.password, password: 'pw'),
      ],
    );

    blocTest<DeleteAccountBloc, DeleteAccountState>(
      'soumission refusée tant que le mot de confirmation est inexact',
      build: () => DeleteAccountBloc(useCase),
      seed: () => const DeleteAccountState(
        step: DeleteAccountStep.confirmation,
        password: 'pw',
        confirmation: 'SUPPR',
      ),
      act: (b) => b.add(const DeleteAccountSubmitted()),
      expect: () => <DeleteAccountState>[],
      verify: (_) => verifyNever(() => useCase(password: any(named: 'password'))),
    );

    blocTest<DeleteAccountBloc, DeleteAccountState>(
      'succès : confirmation insensible à la casse, purgeAt exposé',
      build: () {
        when(() => useCase(password: 'pw')).thenAnswer((_) async => right(purgeAt));
        return DeleteAccountBloc(useCase);
      },
      seed: () => const DeleteAccountState(
        step: DeleteAccountStep.confirmation,
        password: 'pw',
        confirmation: ' supprimer ',
      ),
      act: (b) => b.add(const DeleteAccountSubmitted()),
      expect: () => [
        const DeleteAccountState(
          step: DeleteAccountStep.confirmation,
          status: DeleteAccountStatus.submitting,
          password: 'pw',
          confirmation: ' supprimer ',
        ),
        DeleteAccountState(
          step: DeleteAccountStep.confirmation,
          status: DeleteAccountStatus.success,
          password: 'pw',
          confirmation: ' supprimer ',
          purgeAt: purgeAt,
        ),
      ],
    );

    blocTest<DeleteAccountBloc, DeleteAccountState>(
      'mot de passe invalide : retour à l\'étape 2 avec l\'erreur',
      build: () {
        when(() => useCase(password: 'bad')).thenAnswer(
          (_) async =>
              left(const AuthFailure('Mot de passe invalide', code: 'INVALID_CREDENTIALS')),
        );
        return DeleteAccountBloc(useCase);
      },
      seed: () => const DeleteAccountState(
        step: DeleteAccountStep.confirmation,
        password: 'bad',
        confirmation: 'SUPPRIMER',
      ),
      act: (b) => b.add(const DeleteAccountSubmitted()),
      skip: 1,
      expect: () => [
        const DeleteAccountState(
          step: DeleteAccountStep.password,
          status: DeleteAccountStatus.failure,
          password: 'bad',
          confirmation: 'SUPPRIMER',
          failure: AuthFailure('Mot de passe invalide', code: 'INVALID_CREDENTIALS'),
        ),
      ],
    );
  });
}
