import 'package:equatable/equatable.dart';

abstract class WelcomeEvent extends Equatable{
  const WelcomeEvent();

  @override
  List<Object> get props => [];
}

class EventWelcomePressedAppButton01 extends WelcomeEvent{
  @override
  String toString() => 'Event_WelcomeScreen_PressedAppButton01';
}

class EventWelcomePressedAppButton02 extends WelcomeEvent{
  @override
  String toString() => 'Event_WelcomeScreen_PressedAppButton02';
}

class EventWelcomePressedAppButton03 extends WelcomeEvent{
  @override
  String toString() => 'Event_WelcomeScreen_PressedAppButton03';
}

class EventWelcomePressedAppButton04 extends WelcomeEvent{
  @override
  String toString() => 'Event_WelcomeScreen_PressedAppButton04';
}

class EventWelcomePressedAppButton05 extends WelcomeEvent{
  @override
  String toString() => 'Event_WelcomeScreen_PressedAppButton05';
}