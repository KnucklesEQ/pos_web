import 'package:bloc/bloc.dart';
import 'package:zeive_pos/blocs/welcome/welcome.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState>{
  @override
  WelcomeState get initialState => WelcomeStateInitial();

  @override
  Stream<WelcomeState> mapEventToState(WelcomeEvent event) async* {
    if(event is EventWelcomePressedAppButton01){
      yield WelcomeStateGoToTpvScreen();
      yield WelcomeStateInitial();

      return;
    }

    if(event is EventWelcomePressedAppButton02){
      yield WelcomeStateGoToBillingScreen();
      yield WelcomeStateInitial();

      return;
    }

    if(event is EventWelcomePressedAppButton03){
      yield WelcomeStateGoToMailScreen();
      yield WelcomeStateInitial();

      return;
    }

    if(event is EventWelcomePressedAppButton04){
      yield WelcomeStateGoToSupportScreen();
      yield WelcomeStateInitial();

      return;
    }

    if(event is EventWelcomePressedAppButton05){
      yield WelcomeStateGoToReportScreen();
      yield WelcomeStateInitial();

      return;
    }
    return;
  }
}