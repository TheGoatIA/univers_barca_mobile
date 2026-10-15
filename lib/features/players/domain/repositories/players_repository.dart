import 'package:fpdart/fpdart.dart';
import 'package:univers_barca/core/error/failure.dart';
import 'package:univers_barca/features/players/domain/entities/player.dart';

// Rôle : contrat du repository — défini dans le domaine, implémenté dans la couche data.
abstract class PlayersRepository {
  Future<Either<Failure, List<Player>>> getPlayers();
}
