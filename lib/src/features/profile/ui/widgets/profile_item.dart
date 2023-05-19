part of '../profile_page.dart';

class _ProfileItem extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _ProfileItem(
    this.label, {
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: AppTypography.bodyMedium.copyWith(color: AppColors.black)),
            Icon(Icons.chevron_right_sharp, color: AppColors.grey60),
          ],
        ),
      ),
    );
  }
}
