import 'package:equatable/equatable.dart';

// Rôle : entité métier « joueur » — objet pur, sans dépendance à la couche data.
class Player extends Equatable {
  final String id;
  final String fullName;
  final String? position;
  final int? shirtNumber;
  final String? nationality;

  const Player({
    required this.id,
    required this.fullName,
    this.position,
    this.shirtNumber,
    this.nationality,
  });

  @override
  List<Object?> get props => [id, fullName, position, shirtNumber, nationality];
}
