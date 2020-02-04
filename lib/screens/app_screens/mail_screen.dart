import 'package:flutter/material.dart';

class MailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bienvenido a Mail!', style: Theme.of(context).textTheme.display3),
      ),
    );
  }
}