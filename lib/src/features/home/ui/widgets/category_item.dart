part of 'home_content.dart';

class _CategoryItem extends StatelessWidget {
  final String label;
  final String image;

  const _CategoryItem({
    required this.label,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.grey20,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.x4),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(image)),
          Container(
            height: 60,
            padding: const EdgeInsets.only(left: AppSpacing.x3),
            decoration: BoxDecoration(
              color: AppColors.white100,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(AppSpacing.x4),
                bottomRight: Radius.circular(AppSpacing.x4),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(label, style: AppTypography.headline6.copyWith(color: AppColors.darkBlue)),
            ),
          ),
        ],
      ),
    );
  }
}
