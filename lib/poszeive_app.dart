import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeive_pos/blocs/authentication/authentication.dart';
import 'package:zeive_pos/screens/loading_screen.dart';
import 'package:zeive_pos/screens/login_screen.dart';
import 'package:zeive_pos/screens/splash_screen.dart';
import 'package:zeive_pos/screens/welcome_screen.dart';

class PosZeiveApp extends StatefulWidget {
  @override
  _PosZeiveAppState createState() => _PosZeiveAppState();
}

class _PosZeiveAppState extends State<PosZeiveApp> {
  AuthenticationBloc _authenticationBloc;

  @override
  void initState() {
    super.initState();
    _authenticationBloc = new AuthenticationBloc()..add(EventAuthAppStarted());
  }

  @override
  void dispose() {
    super.dispose();
    _authenticationBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder(
        bloc: _authenticationBloc,
        builder: (BuildContext context, AuthenticationState state) {
          if (state is AuthStateUninitialized) {
            return SplashScreen();
          }
          if (state is AuthStateUnauthenticated) {
            return LoginScreen();
          }
          if (state is AuthStateAuthenticated) {
            return WelcomeScreen();
          }
          if (state is AuthStateLoading) {
            return LoadingScreen();
          }

          //No debería llegar aquí nunca
          return null;
        },
      ),
    );
  }
}
