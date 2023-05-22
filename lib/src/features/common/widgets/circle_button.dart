part of 'product_item.dart';

class _CircleButton extends StatelessWidget {
  final bool isAdd;
  final VoidCallback onTap;

  const _CircleButton({
    this.isAdd = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.x2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isAdd ? AppColors.primary : AppColors.primaryLight,
        ),
        child: Icon(
          isAdd ? Icons.add : Icons.remove,
          color: isAdd ? AppColors.primaryLight : AppColors.primary,
        ),
      ),
    );
  }
}
