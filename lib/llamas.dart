import 'package:flutter/material.dart';

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
        body: new Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
            image: new AssetImage('assets/llamas.png'),
            fit: BoxFit.contain,
          )),
        ));
  }
}
