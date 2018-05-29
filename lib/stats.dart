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
            padding: new EdgeInsets.all(10.0),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('GamerTag:'),
              ),
              new Expanded(
                child: new Text('Text'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('Platform:'),
              ),
              new Expanded(
                child: new Text('Text'),
              ),
            ],
          ),
          new Padding(
            padding: new EdgeInsets.all(10.0),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text(
                  'OVERALL',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('Wins:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Kills:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('K/D:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Win %:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('Score:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Matches:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Padding(
            padding: new EdgeInsets.all(10.0),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text(
                  'SOLOS',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('Wins:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Kills:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('K/D:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Win %:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('Score:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Matches:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Padding(
            padding: new EdgeInsets.all(10.0),
          ),new Row(
            children: <Widget>[
              new Expanded(
                child: new Text(
                  'DUOS',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('Wins:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Kills:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('K/D:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Win %:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('Score:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Matches:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Padding(
            padding: new EdgeInsets.all(10.0),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text(
                  'SQUADS',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('Wins:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Kills:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('K/D:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Win %:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Text('Score:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
              new Expanded(
                child: new Text('Matches:'),
              ),
              new Expanded(
                child: new Text('#'),
              ),
            ],
          ),
        ], // Widget
      ),
    );
  }
}
