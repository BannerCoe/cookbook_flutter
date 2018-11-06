import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}
class HomePageState extends State<MyHomePage>{
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Cook Book"),
      ),
      body: new Center(
      child: new Container(
        width: 200.0,
        height: 200.0,
        color: Colors.green,
      ),
    ),
    floatingActionButton: new FloatingActionButton(
      onPressed: (){
        setState(() {
                  _visible = !_visible;
                });
      },
      tooltip: 'Opacity',
      child: new Icon(Icons.flip),
    ),
    );
  }
  }
