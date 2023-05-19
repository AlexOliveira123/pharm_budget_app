import 'package:flutter/material.dart';

import '../../theme/app_spacing.dart';

class HorizontalSpacer extends StatelessWidget {
  final double _spacing;

  const HorizontalSpacer._({super.key, required double spacing}) : _spacing = spacing;

  factory HorizontalSpacer.x1() {
    return const HorizontalSpacer._(spacing: AppSpacing.x1);
  }

  factory HorizontalSpacer.x2() {
    return const HorizontalSpacer._(spacing: AppSpacing.x2);
  }

  factory HorizontalSpacer.x3() {
    return const HorizontalSpacer._(spacing: AppSpacing.x3);
  }

  factory HorizontalSpacer.x4() {
    return const HorizontalSpacer._(spacing: AppSpacing.x4);
  }

  factory HorizontalSpacer.x5() {
    return const HorizontalSpacer._(spacing: AppSpacing.x5);
  }

  factory HorizontalSpacer.x6() {
    return const HorizontalSpacer._(spacing: AppSpacing.x6);
  }

  factory HorizontalSpacer.x7() {
    return const HorizontalSpacer._(spacing: AppSpacing.x7);
  }

  factory HorizontalSpacer.x8() {
    return const HorizontalSpacer._(spacing: AppSpacing.x8);
  }

  factory HorizontalSpacer.x9() {
    return const HorizontalSpacer._(spacing: AppSpacing.x9);
  }

  factory HorizontalSpacer.x10() {
    return const HorizontalSpacer._(spacing: AppSpacing.x10);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: _spacing);
  }
}
