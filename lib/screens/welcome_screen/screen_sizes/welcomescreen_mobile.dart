import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeive_pos/blocs/welcome/welcome.dart';
import 'package:zeive_pos/screens/welcome_screen/appbuttons/appbutton.dart';

class WelcomeScreenMobile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        fit: BoxFit.fill,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text('Bienvenido',
                  style: TextStyle(fontSize: 60.0, color: Colors.white)),
            ),
            InkWell(
              onTap: () {
                BlocProvider.of<WelcomeBloc>(context)
                  ..add(EventWelcomePressedAppButton01());
              },
              child: AppButton(
                btnIcon: Icons.desktop_windows,
                btnText: 'Terminal Punto de Venta',
                isBig: false,
              ),
            ),
            SizedBox(height: 10.0),
            InkWell(
              onTap: () {
                BlocProvider.of<WelcomeBloc>(context)
                  ..add(EventWelcomePressedAppButton02());
              },
              child: AppButton(
                btnIcon: Icons.trending_up,
                btnText: 'Facturación',
                isBig: false,
              ),
            ),
            SizedBox(height: 10.0),
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
            SizedBox(height: 10.0),
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
            ),
            SizedBox(height: 10.0),
            InkWell(
              onTap: () {
                BlocProvider.of<WelcomeBloc>(context)
                  ..add(EventWelcomePressedAppButton05());
              },
              child: AppButton(
                btnIcon: Icons.assessment,
                btnText: 'Informes',
                isBig: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}