import 'package:flutter/material.dart';

class ChestsPage extends StatelessWidget {
  final String pageText;

  ChestsPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Battle Royale Chest Locations'),
        ),
        backgroundColor: new Color(0x0C2132),
        body: new Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
            image: new AssetImage('assets/chests.png'),
            fit: BoxFit.contain,
          )),
        ));
  }
}
