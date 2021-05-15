import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listitem extends StatelessWidget {
  final String images;

  Listitem(this.images);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              images,
              fit: BoxFit.cover,
              width: 150,
              height: 90,
            ),
            flex: 37,
          ),
          Expanded(
            child: SizedBox(),
            flex: 4,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  "This is Heading of the realted new or may be extended",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    Text("  03-03-2021  "),
                    Container(
                      height: 20,
                      width: 85,
                      padding: EdgeInsets.all(0),
                      color: Colors.orange[900],
                      child: TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.resolveWith<
                              EdgeInsetsGeometry>((Set<MaterialState> states) {
                            return EdgeInsets.all(0);
                          }),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Info",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            flex: 59,
          ),
        ],
      ),
    );
  }
}
