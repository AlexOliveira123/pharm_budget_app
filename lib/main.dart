import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharm_budget_app/src/features/login/view_model/login_view_model.dart';
import 'package:pharm_budget_app/src/features/search/view_model/search_view_model.dart';

import 'src/core/common/app_routes.dart';
import 'src/core/config/env.dart';
import 'src/core/global/global_context.dart';
import 'src/core/rest_client/rest_client_dio.dart';
import 'src/core/theme/app_theme.dart';
import 'src/features/cart/ui/cart_page.dart';
import 'src/features/favorites/ui/favorites_page.dart';
import 'src/features/home/ui/home_page.dart';
import 'src/features/login/repository/auth_repository.dart';
import 'src/features/login/repository/i_auth_repository.dart';
import 'src/features/login/ui/login_page.dart';
import 'src/features/profile/ui/profile_page.dart';
import 'src/features/search/repository/i_search_repository.dart';
import 'src/features/search/repository/search_repository.dart';
import 'src/features/search/ui/search_page.dart';
import 'src/features/splash/ui/splash_page.dart';

void main() async {
  await Env.i.load();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _navKey = GlobalKey<NavigatorState>();

  MyApp({super.key}) {
    GlobalContext.i.navigatorKey = _navKey;
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => RestClientDio()),
        RepositoryProvider<IAuthRepository>(create: (context) => AuthRepository(context.read<RestClientDio>())),
        RepositoryProvider<ISearchRepository>(create: (context) => SearchRepository(context.read<RestClientDio>())),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => LoginViewModel(context.read<IAuthRepository>())),
          BlocProvider(create: (context) => SearchViewModel(context.read<ISearchRepository>()))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: _navKey,
          title: 'PharmBudget',
          theme: AppTheme.theme,
          initialRoute: AppRoutes.splash,
          routes: {
            AppRoutes.splash: (context) => const SplashPage(),
            AppRoutes.login: (context) => const LoginPage(),
            AppRoutes.home: (context) => const HomePage(),
            AppRoutes.profile: (context) => const ProfilePage(),
            AppRoutes.favorites: (context) => const FavoritesPage(),
            AppRoutes.cart: (context) => const CartPage(),
            AppRoutes.search: (context) => const SearchPage(),
          },
        ),
      ),
    );
  }
}
