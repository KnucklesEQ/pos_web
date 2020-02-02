import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthStateUninitialized extends AuthenticationState {
  @override
  String toString() => 'Authentication_State_Uninitalized';
}

class AuthStateAuthenticated extends AuthenticationState {
  @override
  String toString() => 'Authentication_State_Authenticated';
}

class AuthStateUnauthenticated extends AuthenticationState {
  @override
  String toString() => 'Authentication_State_Unauthenticated';
}

class AuthStateLoading extends AuthenticationState {
  @override
  String toString() => 'Authentication_State_Loading';
}
