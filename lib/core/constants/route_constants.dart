// Rôle : Centralise toutes les routes de navigation de l'application.
// Usage : context.go(RouteConstants.home)
class RouteConstants {
  // Auth
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';

  // Onboarding
  static const String onboarding = '/onboarding';

  // App principale
  static const String home = '/home';
  static const String profile = '/profile';
  static const String settings = '/settings';

  // Effectif (feature de référence de l'architecture)
  static const String players = '/players';
}
