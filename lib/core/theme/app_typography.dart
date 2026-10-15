import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:univers_barca/core/theme/app_colors.dart';

// Polices du design system Univers Barça : Barlow Condensed (titres, scores) + Inter (texte).
class AppTypography {
  static const String fontFamily = 'Inter';
  static const String titleFamily = 'Barlow Condensed';

  static TextTheme get lightTextTheme => getTextTheme(Brightness.light);
  static TextTheme get darkTextTheme => getTextTheme(Brightness.dark);

  static TextTheme getTextTheme(Brightness brightness, [String? family]) {
    final theme = TextTheme(
      displayLarge: _title().copyWith(
        fontSize: 57,
        fontWeight: FontWeight.w700,
        height: 1.12,
        letterSpacing: -0.25,
      ),
      displayMedium: _title().copyWith(fontSize: 45, fontWeight: FontWeight.w700, height: 1.15),
      displaySmall: _title().copyWith(fontSize: 36, fontWeight: FontWeight.w600, height: 1.25),
      headlineLarge: _title().copyWith(fontSize: 32, fontWeight: FontWeight.w600, height: 1.25),
      headlineMedium: _title().copyWith(fontSize: 28, fontWeight: FontWeight.w600, height: 1.28),
      headlineSmall: _title().copyWith(fontSize: 24, fontWeight: FontWeight.w600, height: 1.33),
      titleLarge: _title().copyWith(fontSize: 22, fontWeight: FontWeight.w500, height: 1.27),
      titleMedium: _style(
        family,
      ).copyWith(fontSize: 16, fontWeight: FontWeight.w500, height: 1.5, letterSpacing: 0.15),
      titleSmall: _style(
        family,
      ).copyWith(fontSize: 14, fontWeight: FontWeight.w500, height: 1.43, letterSpacing: 0.1),
      bodyLarge: _style(
        family,
      ).copyWith(fontSize: 16, fontWeight: FontWeight.w400, height: 1.5, letterSpacing: 0.5),
      bodyMedium: _style(
        family,
      ).copyWith(fontSize: 14, fontWeight: FontWeight.w400, height: 1.43, letterSpacing: 0.25),
      bodySmall: _style(
        family,
      ).copyWith(fontSize: 12, fontWeight: FontWeight.w400, height: 1.33, letterSpacing: 0.4),
      labelLarge: _style(
        family,
      ).copyWith(fontSize: 14, fontWeight: FontWeight.w500, height: 1.43, letterSpacing: 0.1),
      labelMedium: _style(
        family,
      ).copyWith(fontSize: 12, fontWeight: FontWeight.w500, height: 1.33, letterSpacing: 0.5),
      labelSmall: _style(
        family,
      ).copyWith(fontSize: 11, fontWeight: FontWeight.w500, height: 1.45, letterSpacing: 0.5),
    );

    return theme.apply(
      displayColor: brightness == Brightness.light
          ? AppColors.textPrimary
          : AppColors.textPrimaryDark,
      bodyColor: brightness == Brightness.light ? AppColors.textPrimary : AppColors.textPrimaryDark,
    );
  }

  static TextStyle _title() {
    try {
      return GoogleFonts.getFont(
        titleFamily,
      ).copyWith(leadingDistribution: TextLeadingDistribution.even);
    } catch (_) {
      return const TextStyle(
        fontFamily: titleFamily,
        leadingDistribution: TextLeadingDistribution.even,
      );
    }
  }

  static TextStyle _style([String? family]) {
    try {
      return GoogleFonts.getFont(
        family ?? fontFamily,
      ).copyWith(leadingDistribution: TextLeadingDistribution.even);
    } catch (_) {
      return TextStyle(
        fontFamily: family ?? fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
      );
    }
  }
}
