import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bienvenido a Informes!', style: Theme.of(context).textTheme.display3),
      ),
    );
  }
}