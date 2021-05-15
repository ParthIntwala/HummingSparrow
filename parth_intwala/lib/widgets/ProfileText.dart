import 'package:flutter/material.dart';

class ProfileText extends StatelessWidget {
  final String head;
  final String content;

  ProfileText({this.content, this.head});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              head,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(content),
          ],
        ),
      ),
    );
  }
}
