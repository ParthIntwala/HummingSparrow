import 'package:flutter/material.dart';

import './DrawerButton.dart';
import '../Home.dart';
import '../Profile.dart';
import '../Videos.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 185,
            color: Colors.teal[900],
          ),
          SizedBox(
            height: 10,
          ),
          DrawerButton(
            displayText: "Home",
            navigation: Home(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
              color: Colors.black,
            ),
          ),
          DrawerButton(
            displayText: "Videos",
            navigation: Videos(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
              color: Colors.black,
            ),
          ),
          DrawerButton(
            displayText: "Profile",
            navigation: Profile(),
          ),
        ],
      ),
    );
  }
}
