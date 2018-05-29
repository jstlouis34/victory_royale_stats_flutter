import 'package:flutter/material.dart';
import 'package:zoomable_image/zoomable_image.dart';

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
        body: new ZoomableImage(
          new AssetImage('assets/map.jpg'),
          placeholder: const Center(child: const CircularProgressIndicator()),
        ));
  }
}
