import 'package:flutter/material.dart';
import 'package:pharm_budget_app/src/core/global/global_context.dart';

class Loader {
  static OverlayEntry? _entry;
  static bool _open = false;

  Loader._();

  static void show() {
    _entry ??= OverlayEntry(
      builder: (context) {
        return Container(
          color: Colors.black54,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );

    if (!_open) {
      _open = true;
      Overlay.of(GlobalContext.i.navigatorKey.currentContext!).insert(_entry!);
    }
  }

  static void hide() {
    if (_open) {
      _open = false;
      _entry?.remove();
    }
  }
}
