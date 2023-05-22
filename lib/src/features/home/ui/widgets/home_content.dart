import 'package:flutter/material.dart';
import 'package:pharm_budget_app/src/core/components/spacers/vertical_spacer.dart';
import 'package:pharm_budget_app/src/core/theme/app_images.dart';

import '../../../../core/components/spacers/horizontal_spacer.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

part 'category_item.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.x4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Categorias',
                    style: AppTypography.headline6.copyWith(color: AppColors.darkBlue),
                  ),
                  HorizontalSpacer.x1(),
                  Text('4', style: AppTypography.headline6.copyWith(color: AppColors.grey60)),
                ],
              ),
              Icon(Icons.chevron_right_rounded, color: AppColors.grey60),
            ],
          ),
          VerticalSpacer.x3(),
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: AppSpacing.x5,
                mainAxisSpacing: AppSpacing.x5,
              ),
              children: const [
                _CategoryItem(
                  label: 'Alergia',
                  image: AppImages.medicines1,
                ),
                _CategoryItem(
                  label: 'COVID-19',
                  image: AppImages.medicines2,
                ),
                _CategoryItem(
                  label: 'Diabetes',
                  image: AppImages.medicines3,
                ),
                _CategoryItem(
                  label: 'Dores',
                  image: AppImages.medicines4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
