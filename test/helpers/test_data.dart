import 'package:univers_barca/features/players/data/models/player_model.dart';
import 'package:univers_barca/features/players/domain/entities/player.dart';

// Données de test réutilisables.
class TestData {
  static const tPlayer = Player(
    id: 'p1',
    fullName: 'Lamine Yamal',
    position: 'AD',
    shirtNumber: 10,
    nationality: 'Espagne',
  );
  static const tPlayer2 = Player(id: 'p2', fullName: 'Pedri', position: 'MC', shirtNumber: 8);
  static const tPlayers = [tPlayer, tPlayer2];

  static const tPlayerModel = PlayerModel(
    id: 'p1',
    fullName: 'Lamine Yamal',
    position: 'AD',
    shirtNumber: 10,
    nationality: 'Espagne',
  );
}
