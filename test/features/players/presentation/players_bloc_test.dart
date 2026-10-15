import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:univers_barca/core/error/failure.dart';
import 'package:univers_barca/features/players/presentation/bloc/players_bloc.dart';

import '../../../helpers/mocks.dart';
import '../../../helpers/test_data.dart';

void main() {
  late MockGetPlayersUseCase getPlayers;

  setUp(() => getPlayers = MockGetPlayersUseCase());

  blocTest<PlayersBloc, PlayersState>(
    'émet loading puis success',
    build: () {
      when(() => getPlayers()).thenAnswer((_) async => right(TestData.tPlayers));
      return PlayersBloc(getPlayers);
    },
    act: (bloc) => bloc.add(const PlayersRequested()),
    expect: () => [
      const PlayersState(status: PlayersStatus.loading),
      const PlayersState(status: PlayersStatus.success, items: TestData.tPlayers),
    ],
  );

  blocTest<PlayersBloc, PlayersState>(
    'émet loading puis failure avec le message',
    build: () {
      when(() => getPlayers()).thenAnswer((_) async => left(const ServerFailure('Erreur')));
      return PlayersBloc(getPlayers);
    },
    act: (bloc) => bloc.add(const PlayersRefreshRequested()),
    expect: () => [
      const PlayersState(status: PlayersStatus.loading),
      const PlayersState(status: PlayersStatus.failure, errorMessage: 'Erreur'),
    ],
  );
}
