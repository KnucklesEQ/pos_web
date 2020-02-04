import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bienvenido a Soporte!', style: Theme.of(context).textTheme.display3),
      ),
    );
  }
}