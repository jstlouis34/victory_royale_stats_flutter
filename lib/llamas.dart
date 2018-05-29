import 'package:flutter/material.dart';
import 'package:zoomable_image/zoomable_image.dart';

class LlamasPage extends StatelessWidget {
  final String pageText;

  LlamasPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Battle Royale Llamas'),
        ),
        backgroundColor: new Color(0x0C2132),
        body: new ZoomableImage(
          new AssetImage('assets/llamas.png'),
          placeholder: const Center(child: const CircularProgressIndicator()),
        ));
  }
}
