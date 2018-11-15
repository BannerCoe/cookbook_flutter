import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_todo/models/app_state.dart';
import 'package:redux_todo/reducers/app_state_reducer.dart';

void main() => runApp(MyToDoApp());

class MyToDoApp extends StatelessWidget{
  final store = Store<AppState>(
    appReducer,
    initialState: AppState.loading() ,
    //middleware:  createStoreTodosMiddleware() ,
    );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: "Todo",
        home: new Scaffold(
          body: new Center(),
        ),
      ),
    );
  }

}
