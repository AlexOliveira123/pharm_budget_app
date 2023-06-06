import 'package:flutter/material.dart';
import 'package:pharm_budget_app/src/core/components/buttons/primary_button.dart';
import 'package:pharm_budget_app/src/core/components/spacers/vertical_spacer.dart';
import 'package:pharm_budget_app/src/core/theme/app_spacing.dart';
import 'package:pharm_budget_app/src/core/theme/app_typography.dart';

import '../../theme/app_colors.dart';

showCustomDialog(BuildContext context, {String title = 'Atenção!', required String subtitle}) {
  return showDialog(
    context: context,
    builder: (context) {
      return CustomDialog(
        title: title,
        subtitle: subtitle,
      );
    },
  );
}

class CustomDialog extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomDialog({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.x6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: AppTypography.headline4.copyWith(color: AppColors.grey100)),
            VerticalSpacer.x1(),
            Text(
              subtitle,
              style: AppTypography.bodyMedium.copyWith(color: AppColors.grey80),
              textAlign: TextAlign.center,
            ),
            VerticalSpacer.x4(),
            PrimaryButton(label: 'OK', onPressed: () => Navigator.of(context).pop())
          ],
        ),
      ),
    );
  }
}
