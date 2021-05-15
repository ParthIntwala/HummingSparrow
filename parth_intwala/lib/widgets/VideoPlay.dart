import 'package:flutter/material.dart';

import './Listitem.dart';
import './videoplayer.dart';

class VideoPlay extends StatelessWidget {
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
    var mediaquery = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Container(
          child: Videoplayer(),
          height: mediaquery.size.height * 0.26,
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Content below Video
              Text(
                "This is Heading of the realted new ws this is another",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  "Date & Time here",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Text(
                  "This is Heading of the realted new ws this is another Heading of the",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              //Information Button
              SizedBox(
                width: double.infinity,
                height: mediaquery.size.height * 0.07,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Information",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return Colors.green;
                          return Colors.grey[100];
                        },
                      ),
                      elevation: MaterialStateProperty.resolveWith<double>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) return 1;
                        return 5;
                      }),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mediaquery.size.height * 0.25,
                child: ListView.builder(
                  itemBuilder: (ctx, index) => Listitem(images[index]),
                  itemCount: 5,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
