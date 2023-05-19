import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(height: 1, color: AppColors.grey60);
  }
}
