import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoesly/blocs/bloc_base.dart';
import 'package:shoesly/utils/constants.dart';

enum AppState { loading, onboard, unAuthorized, authorized }

class AppStateBloc extends BlocBase {
  final _appState = BehaviorSubject<AppState>.seeded(AppState.loading);
  Stream<AppState> get appState => _appState.stream;
  AppState get appStateValue => _appState.stream.value;
  AppState get initState => AppState.loading;

  AppStateBloc() {
    launchApp();
  }

  void launchApp() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getBool(Constants.keyAuthorized) == null) {
      _changeAppState(AppState.onboard);
    } else if (sharedPreferences.getBool(Constants.keyAuthorized) != null) {
      _changeAppState(AppState.authorized);
    } else {
      _changeAppState(AppState.unAuthorized);
    }
  }

  Future<void> notifyFirstLauncherApp() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool(Constants.keyLaunchFirstTime, true);
    _changeAppState(AppState.unAuthorized);
  }

  void notifyLoginSuccessfully({bool authorized = false}) {
    if (authorized) {
      _changeAppState(AppState.authorized);
    } else {
      _changeAppState(AppState.unAuthorized);
    }
  }

  void _changeAppState(AppState state) {
    print("change app state $state");
    _appState.sink.add(state);
  }

  Future<void> closeSession() async {
    _changeAppState(AppState.unAuthorized);
  }

  @override
  void dispose() {
    _appState.close();
  }
}
