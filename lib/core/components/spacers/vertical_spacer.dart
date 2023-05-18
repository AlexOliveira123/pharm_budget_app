import 'package:flutter/material.dart';

import 'package:pharm_budget_app/core/theme/app_spacing.dart';

class VerticalSpacer extends StatelessWidget {
  final double _spacing;

  const VerticalSpacer({super.key, required double spacing}) : _spacing = spacing;

  factory VerticalSpacer.x1() {
    return const VerticalSpacer(spacing: AppSpacing.x1);
  }

  factory VerticalSpacer.x2() {
    return const VerticalSpacer(spacing: AppSpacing.x2);
  }

  factory VerticalSpacer.x3() {
    return const VerticalSpacer(spacing: AppSpacing.x3);
  }

  factory VerticalSpacer.x4() {
    return const VerticalSpacer(spacing: AppSpacing.x4);
  }

  factory VerticalSpacer.x5() {
    return const VerticalSpacer(spacing: AppSpacing.x5);
  }

  factory VerticalSpacer.x6() {
    return const VerticalSpacer(spacing: AppSpacing.x6);
  }

  factory VerticalSpacer.x7() {
    return const VerticalSpacer(spacing: AppSpacing.x7);
  }

  factory VerticalSpacer.x8() {
    return const VerticalSpacer(spacing: AppSpacing.x8);
  }

  factory VerticalSpacer.x9() {
    return const VerticalSpacer(spacing: AppSpacing.x9);
  }

  factory VerticalSpacer.x10() {
    return const VerticalSpacer(spacing: AppSpacing.x10);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: _spacing);
  }
}
