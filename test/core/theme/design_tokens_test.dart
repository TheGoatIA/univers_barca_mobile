import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:univers_barca/core/theme/app_colors.dart';
import 'package:univers_barca/core/theme/app_motion.dart';
import 'package:univers_barca/core/theme/app_spacing.dart';
import 'package:univers_barca/core/theme/app_typography.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('surfaces ZA : fond blanc / surface #F7F7F9 en clair', () {
    expect(AppColors.background, const Color(0xFFFFFFFF));
    expect(AppColors.surface, const Color(0xFFF7F7F9));
    expect(AppColors.backgroundDark, const Color(0xFF121218));
    expect(AppColors.surfaceDark, const Color(0xFF1E1E27));
  });

  test('échelle d\'espacement 4·8·12·16·24·32·40, multiples de 4', () {
    const v = [
      AppSpacing.xs,
      AppSpacing.sm,
      AppSpacing.md,
      AppSpacing.lg,
      AppSpacing.xl,
      AppSpacing.xxl,
      AppSpacing.xxxl,
    ];
    expect(v, [4, 8, 12, 16, 24, 32, 40]);
    expect(v.every((e) => e % 4 == 0), isTrue);
  });

  test('durées d\'animation 300 / 700 ms', () {
    expect(AppMotion.standard.inMilliseconds, 300);
    expect(AppMotion.long.inMilliseconds, 700);
  });

  test('échelle typographique ZA (tailles et interlignes)', () {
    final t = AppTypography.textTheme(Brightness.light);
    expect(t.displayLarge!.fontSize, 47);
    expect(t.headlineLarge!.fontSize, 37);
    expect(t.headlineMedium!.fontSize, 30);
    expect(t.headlineSmall!.fontSize, 24);
    expect(t.bodyLarge!.fontSize, 19);
    expect(t.bodyMedium!.fontSize, 15);
    expect(t.bodySmall!.fontSize, 12);
    expect(AppTypography.display.fontSize! * AppTypography.display.height!, closeTo(56, 0.01));
    expect(AppTypography.body.fontSize! * AppTypography.body.height!, closeTo(22, 0.01));
    expect(AppTypography.h1.letterSpacing, closeTo(0.005 * 37, 1e-9));
  });
}
