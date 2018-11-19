import 'package:meta/meta.dart';
import 'package:redux_todo/models/app_tab.dart';

@immutable
class AppState {
  final bool isLoading;

  final AppTab activeTab;
  AppState({this.isLoading = false, this.activeTab = AppTab.todo});

  factory AppState.loading() => AppState(isLoading: true);
}
