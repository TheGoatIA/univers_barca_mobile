import 'package:flutter/material.dart';

// Palette issue du design system Univers Barça (grenat, bleu, or) — identique à l'admin.
// Pour désactiver ce module : supprimer ce fichier et retirer les imports dans app_theme.dart
class AppColors {
  // --- Couleurs primaires de marque ---
  static const Color primary = Color(0xFFA50044);
  static const Color primaryDark = Color(0xFF6B0030);
  static const Color primaryLight = Color(0xFFC4265E);

  static const Color secondary = Color(0xFF004D98);
  static const Color accent = Color(0xFFEDBB00);
  static const Color secondaryLight = Color(0xFF4C86C9);

  // --- Dégradés ---
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryLight, primary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // --- Mode Clair ---
  // D16 / planche ZA-02 : fond blanc, surfaces #F7F7F9 (inversé auparavant).
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFF7F7F9);
  static const Color onBackground = Color(0xFF1A1A2E);
  static const Color onSurface = Color(0xFF1A1A2E);
  static const Color outline = Color(0xFFE6E6EC);

  // --- Mode Sombre ---
  static const Color primaryDarkTheme = Color(0xFFC4265E);
  static const Color backgroundDark = Color(0xFF121218);
  static const Color surfaceDark = Color(0xFF1E1E27);
  static const Color onBackgroundDark = Color(0xFFF2F2F5);
  static const Color onSurfaceDark = Color(0xFFF2F2F5);
  static const Color outlineDark = Color(0xFF2C2C39);

  // --- Couleurs Sémantiques ---
  static const Color success = Color(0xFF1E8E5A);
  static const Color warning = Color(0xFFE0A400);
  static const Color error = Color(0xFFD64545);
  static const Color info = Color(0xFF004D98);

  // --- Sémantiques Mode Sombre ---
  static const Color successDark = Color(0xFF3CBE82);
  static const Color warningDark = Color(0xFFF0C24B);
  static const Color errorDark = Color(0xFFE86C6C);

  // --- Noms du CDC Flutter §9.2 (alias) ---
  static const Color colorPrimary = primary;
  static const Color colorSecondary = secondary;
  static const Color colorAccent = accent;
  static const Color colorBackground = background;
  static const Color colorSurface = surface;
  static const Color colorTextPrimary = textPrimary;
  static const Color colorTextSecondary = textSecondary;

  // --- Texte Mode Clair ---
  static const Color textPrimary = Color(0xFF1A1A2E);
  static const Color textSecondary = Color(0xFF595959);
  static const Color textTertiary = Color(0xFF8A8A98);

  // --- Texte Mode Sombre ---
  static const Color textPrimaryDark = Color(0xFFF2F2F5);
  static const Color textSecondaryDark = Color(0xFFA0A0AE);
  static const Color textTertiaryDark = Color(0xFF757584);
}
