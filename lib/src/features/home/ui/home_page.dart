import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharm_budget_app/src/features/login/view_model/login_view_model.dart';
import 'package:pharm_budget_app/src/features/search/view_model/search_view_model.dart';

import '../../../core/components/spacers/horizontal_spacer.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_images.dart';
import '../../../core/theme/app_typography.dart';
import '../../cart/ui/cart_page.dart';
import '../../favorites/ui/favorites_page.dart';
import '../../profile/ui/profile_page.dart';
import '../../search/ui/search_page.dart';
import 'widgets/home_content.dart';

part 'widgets/app_bar_content.dart';
part 'widgets/bottom_navigation_bar_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 2;
  }

  getBottomNavigationBarItems() {
    return [
      _BottomNavigationBarItem(Icons.person_outline, isSelected: _currentIndex == 0),
      _BottomNavigationBarItem(Icons.search, isSelected: _currentIndex == 1),
      _BottomNavigationBarItem(Icons.home, isSelected: _currentIndex == 2),
      _BottomNavigationBarItem(Icons.favorite_border, isSelected: _currentIndex == 3),
      _BottomNavigationBarItem(Icons.shopping_cart_outlined, isSelected: _currentIndex == 4)
    ];
  }

  void _changeToSearchPage() {
    _currentIndex = 1;
    setState(() {});
  }

  Widget getPage(int index) {
    final pages = [
      const ProfilePage(),
      const SearchPage(),
      const HomeContent(),
      FavoritesPage(onTap: _changeToSearchPage),
      const CartPage(),
    ];
    return pages[index];
  }

  clearSeachField() {
    context.read<SearchViewModel>().searchProduct('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 2 ? AppBar(title: const _AppBarContent(), automaticallyImplyLeading: false) : null,
      body: getPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index;
          if (_currentIndex == 1) clearSeachField();
          setState(() {});
        },
        items: getBottomNavigationBarItems(),
      ),
    );
  }
}
