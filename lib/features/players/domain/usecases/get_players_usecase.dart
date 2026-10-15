import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:univers_barca/core/error/failure.dart';
import 'package:univers_barca/features/players/domain/entities/player.dart';
import 'package:univers_barca/features/players/domain/repositories/players_repository.dart';

// Une action métier = un use case = un fichier.
@lazySingleton
class GetPlayersUseCase {
  final PlayersRepository _repository;

  GetPlayersUseCase(this._repository);

  Future<Either<Failure, List<Player>>> call() => _repository.getPlayers();
}
