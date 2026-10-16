import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

// Rôle : Gère les notifications push Firebase et les notifications locales.
// Dépendances : firebase_messaging, flutter_local_notifications
// Désactiver : supprimer l'appel getIt<NotificationService>().initialize() dans main.dart
//               et retirer firebase_messaging + flutter_local_notifications de pubspec.yaml
@lazySingleton
class NotificationService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    // D13 : la permission push n'est JAMAIS demandée ici (lancement). Voir requestPermission().

    // Configuration des notifications locales Android
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings();
    const initSettings = InitializationSettings(android: androidSettings, iOS: iosSettings);
    await _localNotifications.initialize(initSettings);

    // Écoute des messages en foreground
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Abonnement aux topics et stockage du jeton FCM : voir issue « Notifications push ».
  }

  /// D13 : à appeler uniquement après l'écran de pré-permission (B-15), jamais au lancement.
  Future<bool> requestPermission() async {
    final settings = await _messaging.requestPermission(alert: true, badge: true, sound: true);
    return settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional;
  }

  Future<String?> getToken() => _messaging.getToken();

  void _handleForegroundMessage(RemoteMessage message) {
    // À faire : Afficher une notification locale ici
  }
}
