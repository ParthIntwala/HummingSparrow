import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String displayText;
  final Widget navigation;

  DrawerButton({this.displayText, this.navigation});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (ctx) => navigation));
        },
        child: Text(
          displayText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
