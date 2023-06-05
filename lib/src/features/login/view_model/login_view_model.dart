import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      await Future.delayed(const Duration(milliseconds: 1500));
      await _authRepository.auth(email, password);
      emit(LoggedState());
    } on UnauthorizedException catch (e) {
      emit(ErrorState(e.message));
    } on RepositoryException catch (e) {
      emit(ErrorState(e.message));
    }
  }
}
