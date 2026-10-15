import 'package:chopper/chopper.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:univers_barca/core/network/interceptors.dart';
import 'package:univers_barca/core/network/authenticator.dart';
import 'package:univers_barca/core/network/json_type_converter.dart';

// Rôle : Configure le ChopperClient central avec intercepteurs, auth et convertisseurs JSON.
// Dépendances : chopper, flutter_dotenv, interceptors.dart, authenticator.dart
// Désactiver : remplacer ChopperClient par Dio ou http selon vos besoins.
class AppApiClient {
  static ChopperClient create() {
    final baseUrl = dotenv.env['API_BASE_URL'] ?? 'https://api-staging.univers-barca.app/api/v1';

    return ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      interceptors: [AuthInterceptor(), HttpLoggingInterceptor()],
      authenticator: AppAuthenticator(),
      converter: const JsonToTypeConverter({
        // Les modèles de réponse sont décodés par les datasources (voir players_remote_datasource.dart)
      }),
      errorConverter: const JsonToTypeConverter({}),
    );
  }
}
