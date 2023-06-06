import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/exceptions/repository_exception.dart';
import '../../../core/exceptions/unauthorized_exception.dart';
import '../repository/i_auth_repository.dart';

part 'states.dart';

class LoginViewModel extends Cubit<LoginState> {
  final IAuthRepository _authRepository;

  LoginViewModel(this._authRepository) : super(InitialState());

  Future<void> login(String email, String password) async {
    try {
      emit(LoadingState());
      final accessToken = await _authRepository.auth(email, password);
      final sp = await SharedPreferences.getInstance();
      await sp.setString('accessToken', accessToken);
      emit(LoggedState());
    } on UnauthorizedException catch (e) {
      emit(ErrorState(e.message));
    } on RepositoryException catch (e) {
      emit(ErrorState(e.message));
    }
  }
}
