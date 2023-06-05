import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../../theme/app_typography.dart';

class InputField extends StatelessWidget {
  final String label;
  final Widget? preffixIcon;
  final bool obscureText;
  final ValueNotifier<bool> _obscureText;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  InputField({
    super.key,
    required this.label,
    this.preffixIcon,
    this.obscureText = false,
    this.maxLength,
    this.inputFormatters,
    this.keyboardType = TextInputType.text,
    this.controller,
  }) : _obscureText = ValueNotifier(obscureText);

  @override
  Widget build(BuildContext context) {
    final defaultBorder = UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey60, width: 0.5));
    final focusedBorder = UnderlineInputBorder(borderSide: BorderSide(color: AppColors.primary, width: 1));
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureText,
      builder: (_, isObscure, child) {
        return TextField(
          controller: controller,
          inputFormatters: inputFormatters,
          obscureText: isObscure,
          cursorColor: AppColors.primary,
          maxLength: maxLength,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            prefixIcon: preffixIcon,
            contentPadding: const EdgeInsets.symmetric(vertical: AppSpacing.x2),
            enabledBorder: defaultBorder,
            focusedBorder: focusedBorder,
            border: defaultBorder,
            label: Text(label, style: AppTypography.bodyLarge.copyWith(color: AppColors.grey60)),
            suffixIconColor: MaterialStateColor.resolveWith((states) {
              return states.contains(MaterialState.focused) ? AppColors.darkBlue : AppColors.grey60;
            }),
            suffixIcon: obscureText
                ? IconButton(
                    splashRadius: 1,
                    onPressed: () {
                      _obscureText.value = !isObscure;
                    },
                    icon: Icon(isObscure ? Icons.remove_red_eye_outlined : Icons.remove_red_eye),
                  )
                : null,
          ),
        );
      },
    );
  }
}
