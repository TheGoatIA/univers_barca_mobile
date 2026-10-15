import 'package:json_annotation/json_annotation.dart';
import 'package:univers_barca/features/players/domain/entities/player.dart';

part 'player_model.g.dart';

// Rôle : modèle de données — mappe le JSON de l'API (`GET /players`) vers l'entité du domaine.
// Génération : dart run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class PlayerModel {
  final String id;
  final String fullName;
  final String? position;
  final int? shirtNumber;
  final String? nationality;

  const PlayerModel({
    required this.id,
    required this.fullName,
    this.position,
    this.shirtNumber,
    this.nationality,
  });

  factory PlayerModel.fromJson(Map<String, dynamic> json) => _$PlayerModelFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerModelToJson(this);

  Player toEntity() => Player(
    id: id,
    fullName: fullName,
    position: position,
    shirtNumber: shirtNumber,
    nationality: nationality,
  );
}
