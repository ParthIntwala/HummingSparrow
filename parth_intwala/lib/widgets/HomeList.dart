import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  final String backimage;

  HomeList(this.backimage);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                backimage,
                width: 120,
                height: 120,
                fit: BoxFit.fitHeight,
              ),
            ),
            flex: 33,
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
                  height: 6,
                ),
                Text(
                  "This is Heading of the realted new ws this is another Heading of the",
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    Text("  03-03-2021  "),
                    Container(
                      height: 20,
                      width: 75,
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
                          "Sports",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.bookmark_border),
                  ],
                ),
              ],
            ),
            flex: 66,
          ),
        ],
      ),
    );
  }
}
