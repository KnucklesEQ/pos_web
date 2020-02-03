import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable{
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class EventLoginButtonPressed extends LoginEvent{
  @override
  String toString() => 'Event_Login_ButtonPressed';
}