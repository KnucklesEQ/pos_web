import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeive_pos/blocs/login/login.dart';
import 'package:zeive_pos/screens/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginBloc _loginBloc;

  final _userTextController = new TextEditingController();
  final _passTextController = new TextEditingController();
  String _dropdownValue = 'Camarero';

  @override
  void initState() {
    super.initState();

    _loginBloc = new LoginBloc();
  }

  @override
  void dispose() {
    super.dispose();
    _loginBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      bloc: _loginBloc,
      listener: (BuildContext context, LoginState state) {
        if (state is LoginStateGoToWelcomeScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WelcomeScreen()),
          );
        }
        return;
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        bloc: _loginBloc,
        builder: (BuildContext context, LoginState state) {
          return Stack(
            children: <Widget>[
              Image.asset(
                "assets/images/bgloginvg.jpg",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitHeight,
              ),
              Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Container(
                    width: 500.0,
                    height: 300.0,
                    color: const Color(0xff171515),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 24.0, bottom: 8.0, left: 32.0, right: 18.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('Usuario',
                                    style: TextStyle(
                                      color: const Color(0xffc1c1c1),
                                      fontSize: 18.0,
                                    )),
                                Container(
                                  height: 40.0,
                                  width: 330.0,
                                  color: Color(0xffc1c1c1),
                                  child: TextField(
                                    textAlignVertical: TextAlignVertical.top,
                                    controller: _userTextController,
                                    cursorColor: const Color(0xff171515),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0.0)),
                                          borderSide:
                                              BorderSide(color: Color(0xffc1c1c1))),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0.0)),
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      labelStyle: TextStyle(
                                          color: const Color(0xff171515),
                                          fontSize: 18.0),
                                    ),
                                    maxLines: 1,
                                    autofocus: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: 60.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('Password',
                                    style: TextStyle(
                                      color: const Color(0xffc1c1c1),
                                      fontSize: 18.0,
                                    )),
                                Container(
                                  height: 40.0,
                                  width: 330.0,
                                  color: Color(0xffc1c1c1),
                                  child: TextField(
                                    textAlignVertical: TextAlignVertical.top,
                                    controller: _passTextController,
                                    cursorColor: const Color(0xff171515),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0.0)),
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0.0)),
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      labelStyle: TextStyle(
                                          color: const Color(0xff171515),
                                          fontSize: 18.0),
                                    ),
                                    maxLines: 1,
                                    obscureText: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: 60.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Rol',
                                  style: TextStyle(
                                    color: const Color(0xffc1c1c1),
                                    fontSize: 18.0,
                                  ),
                                ),
                                Container(
                                  height: 40.0,
                                  width: 330.0,
                                  color: Color(0xffc1c1c1),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: DropdownButton<String>(
                                      value: _dropdownValue,
                                      items: <String>[
                                        'Camarero',
                                        'Encargado',
                                        'Administrador',
                                        'Otro'
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          _dropdownValue = newValue;
                                        });
                                      },
                                      isExpanded: true,
                                      iconSize: 40.0,
                                      style: TextStyle(
                                        color: const Color(0xff171515),
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  width: 180.0,
                                  height: 40.0,
                                  child: RaisedButton(
                                    color: const Color(0xff707070),
                                    child: Text(
                                      'Entrar',
                                      style: TextStyle(
                                          color: const Color(0xffc1c1c1),
                                          fontSize: 18.0),
                                    ),
                                    onPressed: () {
                                      _loginBloc.add(EventLoginButtonPressed());
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
