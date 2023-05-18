import 'package:flutter/material.dart';
import 'package:pharm_budget_app/core/components/spacers/vertical_spacer.dart';
import 'package:pharm_budget_app/core/theme/app_images.dart';
import 'package:pharm_budget_app/core/theme/app_typography.dart';

import '../../../core/components/buttons/primary_button.dart';
import '../../../core/components/fields/input_field.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x8),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(AppImages.logo),
                VerticalSpacer.x4(),
                Text('PharmBudget', style: AppTypography.headline4.copyWith(color: AppColors.primary)),
                VerticalSpacer.x5(),
                Text('Seja bem-vindo!', style: AppTypography.headline3.copyWith(color: AppColors.darkBlue)),
                VerticalSpacer.x6(),
                InputField(
                  label: 'Nome do usuário',
                  preffixIcon: Icon(Icons.person_outline, color: AppColors.darkBlue),
                ),
                VerticalSpacer.x4(),
                InputField(
                  label: 'Senha',
                  preffixIcon: Icon(Icons.lock_outlined, color: AppColors.darkBlue),
                  obscureText: true,
                ),
                VerticalSpacer.x8(),
                PrimaryButton(
                  label: 'Entrar',
                  isEnabled: true,
                  onPressed: () {},
                ),
                VerticalSpacer.x8(),
                GestureDetector(
                  onTap: () {},
                  child: RichText(
                    text: TextSpan(
                      style: AppTypography.bodyMedium.copyWith(color: AppColors.grey60),
                      text: 'Ainda não possui cadastro? ',
                      children: [
                        TextSpan(text: 'Crie sua conta!', style: TextStyle(color: AppColors.secondary)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
