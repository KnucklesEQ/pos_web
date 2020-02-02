import 'package:equatable/equatable.dart';

abstract class AuthenticationEvent extends Equatable{
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class EventAuthAppStarted extends AuthenticationEvent{
  @override
  String toString() => 'Event_Authentication_AppStarted';
}

class EventAuthLoggedIn extends AuthenticationEvent{
  @override
  String toString() => 'Event_Authentication_LoggedIn';
}

class EventAuthLoggedOut extends AuthenticationEvent{
  @override
  String toString() => 'Event_Authentication_LoggedOut';
}