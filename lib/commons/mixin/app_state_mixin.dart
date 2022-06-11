import 'package:flutter/cupertino.dart';
import 'package:shoesly/blocs/app_state_bloc.dart';
import 'package:shoesly/blocs/bloc_provider.dart';
import 'package:shoesly/router/router_name.dart';

mixin AppStateMixin<T extends StatefulWidget> on State<T> {
  late final AppStateBloc appStateBloc = BlocProvider.of(context);

  void gotoDashBoard() {
    appStateBloc.notifyLoginSuccessfully(authorized: true);
  }

  void gotoSignUpPage() {
    Navigator.pushNamed(context, RouterNames.signUp);
  }

  void gotoSignInPage() {
    Navigator.pop(context);
  }

  void notifyFirstLauncherApp() async {
    await appStateBloc.notifyFirstLauncherApp();
  }

  void handleSignIn() {
    appStateBloc.notifyLoginSuccessfully(authorized: true);
  }

  void handleSignUp() {
    gotoSignInPage();
  }
}
