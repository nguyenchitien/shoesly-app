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
    Navigator.pushNamedAndRemoveUntil(
        context, RouterNames.signUp, (route) => false);
  }

  void handleSignIn() {
    appStateBloc.notifyLoginSuccessfully(authorized: true);
  }

  void handleSignUp() {
    Navigator.pushNamedAndRemoveUntil(
        context, RouterNames.welcome, (route) => false);
  }
}
