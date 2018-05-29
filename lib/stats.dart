import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  final String pageText;

  StatsPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text('Victory Royale Stats'),
      ),
      body: new ListView(
        padding: const EdgeInsets.all(10.0),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: [
          new Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
            // Column is also layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug paint" (press "p" in the console where you ran
            // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
            // window in IntelliJ) to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
          ),
          new Padding(
            padding: new EdgeInsets.all(05.0),
          ),
          new Center(
            child: new Image.asset(
              'assets/fbr.png',
              fit: BoxFit.cover,
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(30.0),
          ),
          new Center(
            child: new TextField(
              decoration: new InputDecoration(hintText: 'Enter Your GamerTag'),
              style: new TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(30.0),
          ),
          new Center(
            child: new Text(
              'Select Platform',
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          new Center(
            child: new DropdownButton<String>(
              hint: new Text(
                'Playstation 4',
                style: new TextStyle(fontSize: 20.0),
                ),
              items:
                  <String>['Playstation 4', 'PC', 'Xbox'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(
                    value,
                    style: new TextStyle(fontSize: 20.0),
                    ),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(30.0),
          ),
        ], // Widget
      ),
    );
  }
}
