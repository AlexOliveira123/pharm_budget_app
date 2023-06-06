import 'package:flutter/material.dart';

import '../../../core/common/app_routes.dart';
import '../../../core/components/divider/line.dart';
import '../../../core/components/spacers/vertical_spacer.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';

part 'widgets/profile_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Perfil', style: AppTypography.headline4.copyWith(color: AppColors.grey100)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.x3, horizontal: AppSpacing.x6),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text('Alex Oliveira', style: AppTypography.headline3.copyWith(color: AppColors.primary)),
                  VerticalSpacer.x8(),
                  _ProfileItem('Meus pedidos', onTap: () => {}),
                  const Line(),
                  _ProfileItem('Endereços', onTap: () => {}),
                  const Line(),
                  _ProfileItem('Sobre nós', onTap: () => {}),
                  const Line(),
                  _ProfileItem('Contato', onTap: () => {}),
                  const Line(),
                  Padding(
                    padding: const EdgeInsets.all(AppSpacing.x4),
                    child: Text('Versão 1.0.0', style: AppTypography.bodySmall.copyWith(color: AppColors.grey60)),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.splash, (route) => route.isFirst),
              child: Text('SAIR', style: AppTypography.bodyMedium.copyWith(color: AppColors.primary)),
            ),
            VerticalSpacer.x2()
          ],
        ),
      ),
    );
  }
}
