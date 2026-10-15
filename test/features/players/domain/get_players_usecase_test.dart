import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:univers_barca/core/error/failure.dart';
import 'package:univers_barca/features/players/domain/usecases/get_players_usecase.dart';

import '../../../helpers/mocks.dart';
import '../../../helpers/test_data.dart';

void main() {
  late MockPlayersRepository repository;
  late GetPlayersUseCase useCase;

  setUp(() {
    repository = MockPlayersRepository();
    useCase = GetPlayersUseCase(repository);
  });

  test('retourne la liste des joueurs du repository', () async {
    when(() => repository.getPlayers()).thenAnswer((_) async => right(TestData.tPlayers));
    final result = await useCase();
    expect(result, right<Failure, dynamic>(TestData.tPlayers));
    verify(() => repository.getPlayers()).called(1);
  });

  test('propage la Failure du repository', () async {
    when(() => repository.getPlayers()).thenAnswer((_) async => left(const ServerFailure('boom')));
    final result = await useCase();
    expect(result.isLeft(), true);
  });
}
