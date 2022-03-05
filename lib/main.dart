import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text("Ask Me Anything Traveller"),
          ),
        ),
        backgroundColor: Colors.cyan,
        body: Application(),
      ),
    ),
  );
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  var pic = 1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/aa.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                pic = Random().nextInt(4) + 1;
              });
            },
            child: Image.asset('images/ball$pic.png'),
          ),
        )
      ],
    ));
  }
}
