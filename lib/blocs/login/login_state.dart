import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable{
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginStateUninitialized extends LoginState{
  @override
  String toString() => 'Login_State_Uninitalized';
}