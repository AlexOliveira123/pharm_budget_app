part of '../home_page.dart';

class _BottomNavigationBarItem extends BottomNavigationBarItem {
  final IconData iconData;
  final bool isSelected;

  _BottomNavigationBarItem(
    this.iconData, {
    this.isSelected = false,
  }) : super(
          icon: Icon(iconData),
          label: isSelected ? '•' : '',
          backgroundColor: AppColors.white100,
        );
}
