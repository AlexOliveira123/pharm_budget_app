import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_images.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.logo),
            Padding(
              padding: const EdgeInsets.only(top: AppSpacing.x4, bottom: AppSpacing.x5),
              child: Text('PharmBudget', style: AppTypography.headline2.copyWith(color: AppColors.primary)),
            ),
          ],
        ),
      ),
    );
  }
}
