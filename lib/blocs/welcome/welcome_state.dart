import 'package:equatable/equatable.dart';

abstract class WelcomeState extends Equatable{
  const WelcomeState();

  @override
  List<Object> get props => [];
}

class WelcomeStateInitial extends WelcomeState{
  @override
  String toString() => 'WelcomeScreen_State_Initial';
}

class WelcomeStateGoToTpvScreen extends WelcomeState{
  @override
  String toString() => 'WelcomeScreen_State_GoToTpvScreen';
}

class WelcomeStateGoToBillingScreen extends WelcomeState{
  @override
  String toString() => 'WelcomeScreen_State_GoToBillingScreen';
}

class WelcomeStateGoToMailScreen extends WelcomeState{
  @override
  String toString() => 'WelcomeScreen_State_GoToMailScreen';
}

class WelcomeStateGoToSupportScreen extends WelcomeState{
  @override
  String toString() => 'WelcomeScreen_State_GoToSupportScreen';
}

class WelcomeStateGoToReportScreen extends WelcomeState{
  @override
  String toString() => 'WelcomeScreen_State_GoToReportScreen';
}