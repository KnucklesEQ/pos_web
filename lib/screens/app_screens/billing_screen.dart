import 'package:flutter/material.dart';

class BillingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bienvenido a Facturación!', style: Theme.of(context).textTheme.display3),
      ),
    );
  }
}