import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_todo/models/app_state.dart';
import 'package:redux_todo/models/app_tab.dart';

class ActiveTab extends StatelessWidget{
  final ViewModelBuilder<AppTab> builder;

   ActiveTab({Key key, this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return StoreConnector<AppState,AppTab>(
      distinct: true,
      builder:  builder,
      converter: (Store<AppState> store)=> store.state.activeTab,
    );
  }

}