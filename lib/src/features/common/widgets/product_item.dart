import 'package:flutter/material.dart';

import '../../../core/components/divider/line.dart';
import '../../../core/components/spacers/horizontal_spacer.dart';
import '../../../core/components/spacers/vertical_spacer.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_images.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';

part 'circle_button.dart';
part 'quantity_button.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.x4),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppImages.tatumMedicine),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Tatum Verde spray para uso tópico aplicacão tópica, 30ml'),
                    VerticalSpacer.x2(),
                    Row(
                      children: [
                        const _QuantityButton(),
                        const Expanded(child: SizedBox()),
                        Icon(Icons.delete_outline, size: 30, color: AppColors.grey60),
                        HorizontalSpacer.x1(),
                        Icon(Icons.favorite_outline, size: 30, color: AppColors.grey60),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          VerticalSpacer.x2(),
          const Line()
        ],
      ),
    );
  }
}
