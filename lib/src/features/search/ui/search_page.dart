import 'package:flutter/material.dart';

import '../../../core/components/spacers/vertical_spacer.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';
import '../../common/widgets/product_item.dart';

part 'widgets/search_input.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Produtos', style: AppTypography.headline4.copyWith(color: AppColors.grey100)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.x4),
        child: Column(
          children: [
            _SearchInput(
              onChanged: (value) {},
            ),
            VerticalSpacer.x8(),
            Expanded(
              child: ListView(
                children: const [
                  ProductItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
