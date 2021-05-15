import 'package:flutter/material.dart';

import './widgets/Drawer.dart';
import './widgets/HomeList.dart';

class Home extends StatelessWidget {
  final List images = [
    "assets/farmer.jpg",
    "assets/technology.jpg",
    "assets/agriculture.jpg",
    "assets/arvindkejriwal.jpg",
    "assets/marvel.jpg",
    "assets/news.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
      ),
      drawer: SideDrawer(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (ctx, index) => HomeList(images[index]),
            itemCount: 6,
          ),
        ),
      ),
    );
  }
}
