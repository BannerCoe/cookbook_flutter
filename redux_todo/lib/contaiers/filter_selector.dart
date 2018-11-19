

import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_todo/models/app_state.dart';

class FilterSelector extends StatelessWidget{
  final bool visible;

  const FilterSelector({Key key,@required this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreConnector<AppState,_ViewModel>(
      distinct: true,
      builder:(context, vm){
        return new Container(

        ) ;
      } ,
      converter:  _ViewModel.fromStore,
    );
  }

}
class _ViewModel{
  static _ViewModel fromStore(Store<AppState> store){
    return _ViewModel(

    );
  }
}