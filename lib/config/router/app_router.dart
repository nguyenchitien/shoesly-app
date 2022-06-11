import 'package:flutter/material.dart';
import 'package:shoesly/commons/page_not_found.dart';
import 'package:shoesly/config/router/router_name.dart';
import 'package:shoesly/modules/authen/pages/onboard_page.dart';
import 'package:shoesly/modules/authen/pages/sign_in_page.dart';
import 'package:shoesly/modules/authen/pages/sign_up_page.dart';
import 'package:shoesly/modules/authen/pages/welcome_page.dart';
import 'package:shoesly/modules/dashboard/pages/dashboard_page.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> generateOnBoardRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterNames.root:
        return buildRouteWithoutAnimation(settings, const OnBoardPage());
      default:
        return buildRoute(settings, const PageNotFound());
    }
  }

  static Route<dynamic> generateUnAuthorizedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterNames.root:
      case RouterNames.signIn:
        return buildRoute(settings, const SignInPage());
      case RouterNames.signUp:
        return buildRoute(settings, const SignUpPage());
      case RouterNames.welcome:
        return buildRoute(settings, const WelcomePage());
      default:
        return buildRoute(settings, const PageNotFound());
    }
  }

  static Route<dynamic> generateAuthorizedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterNames.root:
        return buildRoute(settings, const DashBoardPage());
      default:
        return buildRoute(settings, const PageNotFound());
    }
  }

  static MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
        settings: settings, builder: (BuildContext context) => builder);
  }

  static PageRouteBuilder buildRouteWithoutAnimation(
      RouteSettings settings, Widget builder) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => builder,
      settings: settings,
      transitionDuration: const Duration(milliseconds: 0),
    );
  }
}
