import 'package:flutter/material.dart';
import 'package:redux_todo/contaiers/activie_tab.dart';
import 'package:redux_todo/keys.dart';
import 'package:redux_todo/models/app_tab.dart';
class  HomeScreen  extends StatefulWidget{

  final void Function() onInit;

  HomeScreen({
    @required
    this.onInit
  }):super(key: MainAppKeys.homeScreen);

  @override
  State<StatefulWidget> createState()=> new _HomeScreenState();

}
class _HomeScreenState extends State{
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
    }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ActiveTab(
      builder: (BuildContext context, AppTab activetab){
        return new Scaffold(
            appBar: new AppBar(
              title: Text("hello todo"),
              actions: <Widget>[
                
              ],
            )
        );
      },
    );
  }

}