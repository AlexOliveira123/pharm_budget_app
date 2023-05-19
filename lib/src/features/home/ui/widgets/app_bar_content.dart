part of '../home_page.dart';

class _AppBarContent extends StatelessWidget {
  const _AppBarContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      key: key,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.logo, width: 32, height: 32),
        HorizontalSpacer.x2(),
        Text('PharmBudget', style: AppTypography.headline5.copyWith(color: AppColors.primary)),
      ],
    );
  }
}
