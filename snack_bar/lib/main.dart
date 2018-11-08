import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text("Snack Bar"),
      ),
      body: new Center(
          child: new RaisedButton(
        onPressed:(){
          _scaffoldKey.currentState.showSnackBar(
            new SnackBar(
              content: new Text("Damns!"),
              duration: Duration(milliseconds: 200),
            )
          );
        },
        child: new Text("click me!"),
      )),
    );
  }
}
