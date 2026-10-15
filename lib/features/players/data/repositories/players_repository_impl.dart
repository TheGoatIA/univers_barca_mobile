import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:univers_barca/core/error/failure.dart';
import 'package:univers_barca/core/network/network_info.dart';
import 'package:univers_barca/features/players/data/datasources/players_remote_datasource.dart';
import 'package:univers_barca/features/players/domain/entities/player.dart';
import 'package:univers_barca/features/players/domain/repositories/players_repository.dart';

@LazySingleton(as: PlayersRepository)
class PlayersRepositoryImpl implements PlayersRepository {
  final PlayersRemoteDataSource _remote;
  final NetworkInfo _networkInfo;

  PlayersRepositoryImpl(this._remote, this._networkInfo);

  @override
  Future<Either<Failure, List<Player>>> getPlayers() async {
    if (!await _networkInfo.isConnected) {
      return left(const NetworkFailure('Pas de connexion internet'));
    }
    try {
      final models = await _remote.getPlayers();
      return right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
