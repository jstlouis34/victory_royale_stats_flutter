import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  final String pageText;

  MapPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Battle Royale Map'),
        ),
        backgroundColor: new Color(0x0C2132),
        body: new Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
            image: new AssetImage('assets/map.jpg'),
            fit: BoxFit.contain,
          )),
        ));
  }
}
