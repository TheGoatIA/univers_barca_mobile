import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

// Rôle : appels API du compte. Contrat : DELETE /users/me {password, confirmation:'SUPPRIMER'}
// -> { success, data: { purgeAt } } ; erreurs 401, 422 (confirmation inexacte), 429.
@lazySingleton
class AccountRemoteDataSource {
  final ChopperClient _client;

  AccountRemoteDataSource(this._client);

  Future<DateTime> deleteAccount({required String password, required String confirmation}) async {
    final response = await _client.send<dynamic, dynamic>(
      Request(
        'DELETE',
        Uri.parse('/users/me'),
        _client.baseUrl,
        body: jsonEncode({'password': password, 'confirmation': confirmation}),
        headers: {'Content-Type': 'application/json'},
      ),
    );
    final body = _decode(response.isSuccessful ? response.body : response.error ?? response.body);
    if (!response.isSuccessful) {
      final error = body is Map ? body['error'] : null;
      final code = error is Map ? error['code'] as String? : null;
      throw AccountApiException(response.statusCode, code);
    }
    final data = (body as Map<String, dynamic>)['data'] as Map<String, dynamic>;
    return DateTime.parse(data['purgeAt'] as String);
  }

  dynamic _decode(dynamic raw) {
    if (raw is String && raw.isNotEmpty) {
      try {
        return jsonDecode(raw);
      } catch (_) {
        return null;
      }
    }
    return raw;
  }
}

class AccountApiException implements Exception {
  final int statusCode;
  final String? code;
  const AccountApiException(this.statusCode, [this.code]);

  @override
  String toString() => 'Erreur compte ($statusCode${code == null ? '' : ', $code'})';
}
