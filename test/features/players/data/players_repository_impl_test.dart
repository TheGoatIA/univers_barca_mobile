import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:univers_barca/core/error/failure.dart';
import 'package:univers_barca/features/players/data/models/player_model.dart';
import 'package:univers_barca/features/players/data/repositories/players_repository_impl.dart';

import '../../../helpers/mocks.dart';
import '../../../helpers/test_data.dart';

void main() {
  late MockPlayersRemoteDataSource remote;
  late MockNetworkInfo network;
  late PlayersRepositoryImpl repository;

  setUp(() {
    remote = MockPlayersRemoteDataSource();
    network = MockNetworkInfo();
    repository = PlayersRepositoryImpl(remote, network);
  });

  test('NetworkFailure hors connexion', () async {
    when(() => network.isConnected).thenAnswer((_) async => false);
    final result = await repository.getPlayers();
    result.fold((l) => expect(l, isA<NetworkFailure>()), (_) => fail('attendu: échec'));
    verifyNever(() => remote.getPlayers());
  });

  test('mappe les modèles en entités', () async {
    when(() => network.isConnected).thenAnswer((_) async => true);
    when(() => remote.getPlayers()).thenAnswer((_) async => [TestData.tPlayerModel]);
    final result = await repository.getPlayers();
    expect(result.getOrElse((_) => []), [TestData.tPlayer]);
  });

  test('ServerFailure si le datasource lève une exception', () async {
    when(() => network.isConnected).thenAnswer((_) async => true);
    when(() => remote.getPlayers()).thenThrow(Exception('500'));
    final result = await repository.getPlayers();
    result.fold((l) => expect(l, isA<ServerFailure>()), (_) => fail('attendu: échec'));
  });

  test('PlayerModel.fromJson / toEntity', () {
    final model = PlayerModel.fromJson({'id': 'p1', 'fullName': 'Lamine Yamal', 'shirtNumber': 10});
    expect(model.toEntity().fullName, 'Lamine Yamal');
    expect(model.toJson()['shirtNumber'], 10);
  });
}
