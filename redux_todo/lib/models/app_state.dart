import 'package:meta/meta.dart';

@immutable
class AppState{
  final bool isLoading;
  AppState({this.isLoading = false});
    
    factory AppState.loading() => AppState(isLoading: true);
}