import 'package:flutter/material.dart';
import 'package:zoomable_image/zoomable_image.dart';

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
        body: new ZoomableImage(
          new AssetImage('assets/chests.png'),
          placeholder: const Center(child: const CircularProgressIndicator()),
        ));
  }
}
