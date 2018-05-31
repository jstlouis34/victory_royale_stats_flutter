import 'package:flutter/material.dart';

import 'map.dart';
import 'llamas.dart';
import 'chests.dart';
import 'stats.dart';

void main() => runApp(new VictoryRoyale());

class VictoryRoyale extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Victory Royale Stats',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String gamerTag = '';
  String platform = '';

  String _value = null;
  List<String> _values = new List<String>();

  @override
    void initState() {
      _values.addAll(['Playstation 4', 'Xbox', 'PC']);
      _value = _values.elementAt(0);
      //super.initState();
    }

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
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Victory Royale Stats'),
              accountEmail: new Text('jstlouis34@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage('assets/icon.png'),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/purpbackground.jpg'),
                  fit: BoxFit.fill
                ),
              ),
            ),
            new ListTile(
              title: new Text('Map'),
              trailing: new Icon(Icons.map),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new MapPage('Map Page'))),
            ),
            new ListTile(
              title: new Text('Chest Locations'),
              trailing: new Icon(Icons.map),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new ChestsPage('Chests Page'))),
            ),
            new ListTile(
              title: new Text('Llama Locations'),
              trailing: new Icon(Icons.map),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new LlamasPage('Llamas Page'))),
            ),
          ],
        ),
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
            child: new Text(
              'Stats',
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(30.0),
          ),
          new Center(
            child: new TextField(
              decoration: new InputDecoration(hintText: 'Enter Your GamerTag'),
              onSubmitted: (String str){
                setState((){
                  gamerTag = str;
                });
              },
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
            child: new DropdownButton(
              value: _value,
              items: _values.map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(
                    value,
                    style: new TextStyle(fontSize: 20.0),
                    ),
                );
              }).toList(),
              onChanged: (String str){
                setState((){
                  _value = str;
                  platform = str;
                });
              },
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(30.0),
          ),
          new Center(
            child: new MaterialButton(
              height: 50.0,
              minWidth: 150.0,
              color: Colors.purple,
              textColor: Colors.white,
              child: new Text('Get Stats'),
              onPressed: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new StatsPage(gamerTag, platform))),
            ),
          ),
        ], // Widget
      ),
    );
  }
}
