import 'package:flutter/material.dart';

import '../../../core/components/divider/line.dart';
import '../../../core/components/spacers/horizontal_spacer.dart';
import '../../../core/components/spacers/vertical_spacer.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_images.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';
import '../../search/model/product_model.dart';

part 'circle_button.dart';
part 'quantity_button.dart';

class ProductItem extends StatelessWidget {
  final ProductModel productModel;
  final bool showDelete;

  const ProductItem({
    super.key,
    required this.productModel,
    this.showDelete = false,
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
              Image.asset(AppImages.noImage, width: 60, height: 80),
              HorizontalSpacer.x2(),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(productModel.name),
                    VerticalSpacer.x2(),
                    Row(
                      children: [
                        const _QuantityButton(),
                        const Expanded(child: SizedBox()),
                        if (showDelete) ...[
                          Icon(Icons.delete_outline, size: 30, color: AppColors.grey60),
                          HorizontalSpacer.x1(),
                        ],
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
