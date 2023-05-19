import 'package:flutter/material.dart';

import 'src/core/common/app_routes.dart';
import 'src/core/theme/app_theme.dart';
import 'src/features/cart/ui/cart_page.dart';
import 'src/features/favorites/ui/favorites_page.dart';
import 'src/features/home/ui/home_page.dart';
import 'src/features/login/ui/login_page.dart';
import 'src/features/profile/ui/profile_page.dart';
import 'src/features/search/ui/search_page.dart';
import 'src/features/splash/ui/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pharm Budget',
      theme: AppTheme.theme,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.splash: (context) => const SplashPage(),
        AppRoutes.login: (context) => const LoginPage(),
        AppRoutes.home: (context) => const HomePage(),
        AppRoutes.profile: (context) => const ProfilePage(),
        AppRoutes.favorites: (context) => const FavoritesPage(),
        AppRoutes.cart: (context) => const CartPage(),
        AppRoutes.search: (context) => const SearchPage(),
      },
    );
  }
}
