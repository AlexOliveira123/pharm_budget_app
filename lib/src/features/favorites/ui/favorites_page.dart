import 'package:flutter/material.dart';

import '../../../core/components/buttons/primary_button.dart';
import '../../../core/components/spacers/vertical_spacer.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_images.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';

class FavoritesPage extends StatelessWidget {
  final void Function()? onTap;

  const FavoritesPage({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Favoritos', style: AppTypography.headline4.copyWith(color: AppColors.grey100)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.x4, horizontal: AppSpacing.x6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('A lista de favoritos está vazia', style: AppTypography.headline4.copyWith(color: AppColors.grey100)),
            VerticalSpacer.x4(),
            Text(
              'Aqui ficará seus produtos favoritos. Para adicioná-los, basta clicar no coraçãozinho <3',
              style: AppTypography.bodyLarge.copyWith(color: AppColors.grey60),
            ),
            VerticalSpacer.x8(),
            Padding(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 3),
              child: PrimaryButton(
                label: 'Ir às compras',
                onPressed: onTap!,
              ),
            ),
            VerticalSpacer.x10(),
            Align(
              alignment: Alignment.center,
              child: Image.asset(AppImages.favorites),
            )
          ],
        ),
      ),
    );
  }
}
