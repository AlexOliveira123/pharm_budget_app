part of 'product_item.dart';

class _QuantityButton extends StatefulWidget {
  const _QuantityButton();

  @override
  State<_QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<_QuantityButton> {
  late int quantity;

  @override
  void initState() {
    quantity = 1;
    super.initState();
  }

  void increaseQuantity() {
    quantity++;
    setState(() {});
  }

  void decreaseQuantity() {
    if (quantity == 1) return;
    quantity--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey20,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _CircleButton(onTap: decreaseQuantity),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x3),
            child: Text(quantity.toString(), style: AppTypography.headline4.copyWith(color: AppColors.grey100)),
          ),
          _CircleButton(isAdd: true, onTap: increaseQuantity),
        ],
      ),
    );
  }
}
