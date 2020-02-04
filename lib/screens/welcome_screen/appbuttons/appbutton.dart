import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final IconData btnIcon;
  final String btnText;
  final bool isBig;

  AppButton({
    @required this.btnIcon,
    @required this.btnText,
    @required this.isBig,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (isBig) ? 300.0 : 250.0,
      height: (isBig) ? 200.0 : 95.0,
      color: const Color(0xff034d03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(btnIcon, size: (isBig) ? 140 : 60, color: Colors.white),
          SizedBox(height: 5.0),
          FittedBox(
              fit: BoxFit.fill,
              child: Text(
                btnText,
                style: TextStyle(
                    fontSize: (isBig) ? 24.0 : 18.0, color: Colors.white),
              )),
        ],
      ),
    );
  }
}
