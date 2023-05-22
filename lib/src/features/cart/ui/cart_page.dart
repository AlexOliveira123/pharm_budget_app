import 'package:flutter/material.dart';

import '../../../core/components/buttons/primary_button.dart';
import '../../../core/components/spacers/vertical_spacer.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';
import '../../common/widgets/product_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Cesta', style: AppTypography.headline4.copyWith(color: AppColors.grey100)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.x4),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  ProductItem(),
                ],
              ),
            ),
            PrimaryButton(
              label: 'Ver orçamentos',
              onPressed: () {},
            ),
            VerticalSpacer.x4(),
          ],
        ),
      ),
    );
  }
}
