import 'package:flutter/material.dart';
import 'map.dart';
import 'llamas.dart';
import 'chests.dart';

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
      home: new MyHomePage(title: 'Victory Royale Stats'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
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
        title: new Text(widget.title),
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
          new Center(
            child: new MaterialButton(
              height: 50.0,
              minWidth: 150.0,
              color: Colors.purple,
              textColor: Colors.white,
              child: new Text('Get Stats'),
              onPressed: null,
            ),
          ),
        ], // Widget
      ),
    );
  }
}
