import 'package:bloc/bloc.dart';
import 'package:zeive_pos/blocs/authentication/authentication.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>{
  @override
  AuthenticationState get initialState => AuthStateUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if(event is EventAuthAppStarted){
      await Future.delayed(Duration(seconds: 1));

      yield AuthStateUnauthenticated();

      return;
    }

    if(event is EventAuthLoggedIn){
      yield AuthStateLoading();

      yield AuthStateAuthenticated();
      return;
    }

    if(event is EventAuthLoggedOut){
      yield AuthStateLoading();

      yield AuthStateUnauthenticated();
      return;
    }

    return;
  }
}