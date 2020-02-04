import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeive_pos/blocs/welcome/welcome.dart';
import 'package:zeive_pos/screens/welcome_screen/appbuttons/appbutton.dart';

class WelcomeScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text('Bienvenido',
                style: TextStyle(fontSize: 60.0, color: Colors.white)),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      BlocProvider.of<WelcomeBloc>(context)
                        ..add(EventWelcomePressedAppButton01());
                    },
                    child: AppButton(
                      btnIcon: Icons.desktop_windows,
                      btnText: 'Terminal Punto de Venta',
                      isBig: true,
                    ),
                  ),
                  SizedBox(width: 25.0),
                  InkWell(
                    onTap: () {
                      BlocProvider.of<WelcomeBloc>(context)
                        ..add(EventWelcomePressedAppButton02());
                    },
                    child: AppButton(
                      btnIcon: Icons.trending_up,
                      btnText: 'Facturación',
                      isBig: true,
                    ),
                  ),
                  SizedBox(width: 25.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          BlocProvider.of<WelcomeBloc>(context)
                            ..add(EventWelcomePressedAppButton03());
                        },
                        child: AppButton(
                          btnIcon: Icons.mail,
                          btnText: 'Mail',
                          isBig: false,
                        ),
                      ),
                      SizedBox(height: 9.0),
                      InkWell(
                        onTap: () {
                          BlocProvider.of<WelcomeBloc>(context)
                            ..add(EventWelcomePressedAppButton04());
                        },
                        child: AppButton(
                          btnIcon: Icons.supervised_user_circle,
                          btnText: 'Soporte',
                          isBig: false,
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 25.0),
                  InkWell(
                    onTap: () {
                      BlocProvider.of<WelcomeBloc>(context)
                        ..add(EventWelcomePressedAppButton05());
                    },
                    child: AppButton(
                      btnIcon: Icons.assessment,
                      btnText: 'Informes',
                      isBig: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
