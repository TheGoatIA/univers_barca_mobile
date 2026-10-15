import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:univers_barca/features/players/data/models/player_model.dart';

// Rôle : source de données distante — appelle l'API REST via le ChopperClient central.
// Format de réponse API : { success: true, data: { items: [...], total, page, ... } }
@lazySingleton
class PlayersRemoteDataSource {
  final ChopperClient _client;

  PlayersRemoteDataSource(this._client);

  Future<List<PlayerModel>> getPlayers({int page = 1, int limit = 50}) async {
    final response = await _client.get<dynamic, dynamic>(
      Uri.parse('/players'),
      parameters: {'page': page, 'limit': limit},
    );
    if (!response.isSuccessful) {
      throw ServerException(response.statusCode);
    }
    final body = response.body is String ? jsonDecode(response.body as String) : response.body;
    final items =
        ((body as Map<String, dynamic>)['data'] as Map<String, dynamic>)['items'] as List<dynamic>;
    return items.map((e) => PlayerModel.fromJson(e as Map<String, dynamic>)).toList();
  }
}

class ServerException implements Exception {
  final int statusCode;
  const ServerException(this.statusCode);

  @override
  String toString() => 'Erreur serveur ($statusCode)';
}
