part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}
class LoginInitial extends AuthState {}

class LoadingState extends AuthState {}

class LoginSuccessState extends AuthState {
  final uId;

  LoginSuccessState(this.uId);
}

class LoginErrorState extends AuthState {
  final String error;

  LoginErrorState(this.error);
}
class ChangeLoginPasswordMode extends AuthState{}



class RegisterLoadingState extends AuthState{}
class RegisterSuccessState extends AuthState{
}
class RegisterErrorState extends AuthState{

  final String error ;

  RegisterErrorState(this.error);
}

class ChangeRegisterPasswordMode extends AuthState{}



class UserCreateLoadingState extends AuthState{}
class UserCreateSuccessState extends AuthState{
}
class UserCreateErrorState extends AuthState{

  final String error ;

  UserCreateErrorState(this.error);
}