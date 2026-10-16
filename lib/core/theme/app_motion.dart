// Rôle : durées d'animation du design system (planches ZE, décision D16).
class AppMotion {
  /// Transition standard (changement d'onglet, fondu enchaîné, etc.).
  static const Duration standard = Duration(milliseconds: 300);

  /// Animation longue (pulsation du compte à rebours, apparitions d'accueil).
  static const Duration long = Duration(milliseconds: 700);
}
