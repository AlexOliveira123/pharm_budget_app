import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/regex_consts.dart';
import '../../../core/components/buttons/primary_button.dart';
import '../../../core/components/fields/input_field.dart';
import '../../../core/components/spacers/vertical_spacer.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_images.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';
import '../view_model/login_view_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _loginController;
  late final TextEditingController _passwordController;
  late final LoginViewModel _loginViewModel;

  @override
  void initState() {
    super.initState();
    _loginController = TextEditingController();
    _passwordController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loginViewModel = context.read<LoginViewModel>();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _loginController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginViewModel, LoginState>(
      listener: (context, state) {
        if (state is ErrorState) {
          //show error dialog
        }
      },
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x8),
            child: BlocBuilder<LoginViewModel, LoginState>(
              builder: (context, state) {
                if (state is LoadingState) return const CircularProgressIndicator();
                return SingleChildScrollView(
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
                        controller: _loginController,
                        preffixIcon: Icon(Icons.person_outline, color: AppColors.darkBlue),
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(RegexConsts.emoji)),
                          FilteringTextInputFormatter.deny(RegExp(RegexConsts.whiteSpace)),
                        ],
                      ),
                      VerticalSpacer.x4(),
                      InputField(
                        label: 'Senha',
                        controller: _passwordController,
                        preffixIcon: Icon(Icons.lock_outlined, color: AppColors.darkBlue),
                        obscureText: true,
                      ),
                      VerticalSpacer.x8(),
                      PrimaryButton(
                        label: 'Entrar',
                        isEnabled: true,
                        onPressed: () => _loginViewModel.login(_loginController.text, _passwordController.text),
                      ),
                      VerticalSpacer.x8(),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
