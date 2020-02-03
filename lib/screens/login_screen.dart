import 'package:flutter/material.dart';
import 'package:zeive_pos/blocs/login/login.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginBloc _loginBloc;

  final _userTextController = new TextEditingController();
  final _passTextController = new TextEditingController();

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
                        children: <Widget>[
                          Text('Usuario',
                              style: TextStyle(
                                color: const Color(0xffc1c1c1),
                                fontSize: 18.0,
                              )),
                          Container(
                            width: 350.0,
                            color: Color(0xffc1c1c1),
                            child: TextField(
                              controller: _userTextController,
                              cursorColor: const Color(0xff171515),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(Radius.circular(0.0)),
                                  borderSide: BorderSide(color: Color(0xffc1c1c1))
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(Radius.circular(0.0)),
                                  borderSide: BorderSide(color: Colors.white)
                                ),
                                labelStyle: TextStyle(color: const Color(0xff171515), fontSize: 18.0),
                              ),
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
                        children: <Widget>[
                          Text('Password',
                              style: TextStyle(
                                color: const Color(0xffc1c1c1),
                                fontSize: 18.0,
                              )),
                          Container(
                            width: 350.0,
                            child: TextField(
                              controller: _passTextController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 60.0,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Rol',
                            style: TextStyle(
                              color: const Color(0xffc1c1c1),
                              fontSize: 18.0,
                            ),
                          )
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
                              onPressed: () {},
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
}
