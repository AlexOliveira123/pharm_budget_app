import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/app_routes.dart';
import '../theme/app_colors.dart';

class GlobalContext {
  late final GlobalKey<NavigatorState> _navigatorKey;

  static GlobalContext? _instance;

  GlobalContext._();

  static GlobalContext get i {
    _instance ??= GlobalContext._();
    return _instance!;
  }

  static bool _open = false;

  set navigatorKey(GlobalKey<NavigatorState> key) => _navigatorKey = key;

  Future<void> loginExpire() async {
    final sp = await SharedPreferences.getInstance();
    sp.clear();
    _showSnackBar();
    _navigatorKey.currentState!.popUntil(ModalRoute.withName(AppRoutes.login));
  }

  _showSnackBar() {
    if (!_open) {
      _open = true;
      ScaffoldMessenger.of(_navigatorKey.currentContext!).showSnackBar(
        SnackBar(
          backgroundColor: AppColors.accent,
          content: const Text('Login expirado!'),
        ),
      );
      Future.delayed(const Duration(milliseconds: 2000), () => _open = false);
    }
  }
}
