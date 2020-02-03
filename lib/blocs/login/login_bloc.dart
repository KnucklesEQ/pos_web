import 'package:bloc/bloc.dart';
import 'package:zeive_pos/blocs/login/login.dart';

class LoginBloc extends Bloc<LoginEvent ,LoginState>{
  @override
  LoginState get initialState => LoginStateUninitialized();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    return;
  }
}