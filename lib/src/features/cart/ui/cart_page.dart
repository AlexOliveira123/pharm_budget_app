import 'package:flutter/material.dart';
import 'package:pharm_budget_app/src/features/search/model/product_model.dart';

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
    final productModel = ProductModel(
      id: 1,
      categoryId: 1,
      name: 'Tatum Verde spray para uso tópico aplicacão tópica, 30ml',
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Cesta', style: AppTypography.headline4.copyWith(color: AppColors.grey100)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.x4),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ProductItem(productModel: productModel, showDelete: true),
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
