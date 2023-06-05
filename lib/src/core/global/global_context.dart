import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/app_routes.dart';

class GlobalContext {
  late final GlobalKey<NavigatorState> _navigatorKey;

  static GlobalContext? _instance;

  GlobalContext._();

  static GlobalContext get i {
    _instance ??= GlobalContext._();
    return _instance!;
  }

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
  set navigatorKey(GlobalKey<NavigatorState> key) => _navigatorKey = key;

  Future<void> loginExpire() async {
    final sp = await SharedPreferences.getInstance();
    sp.clear();
    _showSnackBar();
    _navigatorKey.currentState!.popUntil(ModalRoute.withName(AppRoutes.login));
  }

  _showSnackBar() {
    ScaffoldMessenger.of(_navigatorKey.currentContext!).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.black,
        content: Text('Login expirado!'),
      ),
    );
  }
}
