import 'package:flutter/material.dart';

class TpvScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bienvenido a TPV!', style: Theme.of(context).textTheme.display3),
      ),
    );
  }
}