import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:univers_barca/core/theme/app_colors.dart';
import 'package:univers_barca/core/theme/app_theme.dart';

void main() {
  group('Thème (design system)', () {
    test('la couleur primaire est le grenat Barça en clair', () {
      expect(AppTheme.lightTheme().colorScheme.primary, AppColors.primary);
      expect(AppColors.primary, const Color(0xFFA50044));
    });

    test('le thème sombre utilise le fond sombre du design system', () {
      expect(AppTheme.darkTheme().scaffoldBackgroundColor, AppColors.backgroundDark);
      expect(AppTheme.darkTheme().brightness, Brightness.dark);
    });
  });
}
