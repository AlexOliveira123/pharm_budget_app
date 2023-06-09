part of 'login_view_model.dart';

abstract class LoginState extends Equatable {}

class InitialState extends LoginState {
  @override
  List<Object> get props => [];
}

class ValidateState extends LoginState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class InvalidDataState extends ValidateState {
  @override
  List<Object> get props => [];
}

class ValidDataState extends ValidateState {
  @override
  List<Object> get props => [];
}

class LoadingState extends LoginState {
  @override
  List<Object> get props => [];
}

class LoggedState extends LoginState {
  @override
  List<Object> get props => [];
}

class ErrorState extends LoginState {
  final String message;

  ErrorState(this.message);
  @override
  List<Object> get props => [];
}
