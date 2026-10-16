import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:univers_barca/core/theme/app_colors.dart';

// Polices du design system Univers Barça : Barlow Condensed (titres, scores) + Inter (texte).
class AppTypography {
  static const String fontFamily = 'Inter';
  static const String titleFamily = 'Barlow Condensed';

  // Échelle ZA (ratio ~1,25) : taille / interligne ; titres en Barlow Condensed,
  // interlettrage +0,5 % (0,005 × taille). La mise en MAJUSCULES se fait dans les widgets.
  static TextStyle get display => _heading(47, 56, FontWeight.w800);
  static TextStyle get h1 => _heading(37, 44, FontWeight.w700);
  static TextStyle get h2 => _heading(30, 36, FontWeight.w700);
  static TextStyle get h3 => _heading(24, 30, FontWeight.w600);
  static TextStyle get bodyLarge => getTextTheme(Brightness.light).bodyLarge!;
  static TextStyle get body => getTextTheme(Brightness.light).bodyMedium!;
  static TextStyle get caption => getTextTheme(Brightness.light).bodySmall!;

  static TextTheme textTheme(Brightness brightness) => getTextTheme(brightness);

  static TextStyle _heading(double size, double lineHeight, FontWeight weight) => _title().copyWith(
    fontSize: size,
    height: lineHeight / size,
    fontWeight: weight,
    letterSpacing: 0.005 * size,
  );

  static TextTheme get lightTextTheme => getTextTheme(Brightness.light);
  static TextTheme get darkTextTheme => getTextTheme(Brightness.dark);

  static TextTheme getTextTheme(Brightness brightness, [String? family]) {
    final theme = TextTheme(
      displayLarge: display,
      displayMedium: _title().copyWith(fontSize: 45, fontWeight: FontWeight.w700, height: 1.15),
      displaySmall: _title().copyWith(fontSize: 36, fontWeight: FontWeight.w600, height: 1.25),
      headlineLarge: h1,
      headlineMedium: h2,
      headlineSmall: h3,
      titleLarge: _title().copyWith(fontSize: 22, fontWeight: FontWeight.w500, height: 1.27),
      titleMedium: _style(
        family,
      ).copyWith(fontSize: 16, fontWeight: FontWeight.w500, height: 1.5, letterSpacing: 0.15),
      titleSmall: _style(
        family,
      ).copyWith(fontSize: 14, fontWeight: FontWeight.w500, height: 1.43, letterSpacing: 0.1),
      bodyLarge: _style(
        family,
      ).copyWith(fontSize: 19, fontWeight: FontWeight.w400, height: 28 / 19),
      bodyMedium: _style(
        family,
      ).copyWith(fontSize: 15, fontWeight: FontWeight.w400, height: 22 / 15),
      bodySmall: _style(
        family,
      ).copyWith(fontSize: 12, fontWeight: FontWeight.w400, height: 16 / 12),
      labelLarge: _style(
        family,
      ).copyWith(fontSize: 15, fontWeight: FontWeight.w600, height: 22 / 15),
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
