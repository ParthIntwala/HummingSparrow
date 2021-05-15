import 'package:flutter/material.dart';

import './widgets/Drawer.dart';
import './widgets/ProfileHead.dart';
import './widgets/ProfileText.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
      ),
      drawer: SideDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            ProfileHead(),
            Container(
              padding: EdgeInsets.only(
                top: 50,
                left: 50,
                right: 50,
                bottom: 5,
              ),
              width: double.infinity,
              height: 380,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ProfileText(
                    head: "Location",
                    content: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ProfileText(
                    head: "Pincode",
                    content: "xxxxxx",
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ProfileText(
                    head: "Date of Birth",
                    content: "dd-mm-yy",
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ProfileText(
                    head: "Gender",
                    content: "Male",
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ProfileText(
                    head: "Whatsapp",
                    content: "+91 - xxxxxxxxxx",
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ProfileText(
                    head: "Email",
                    content: "xxxxxxxxxxxxx@gmail.com",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
