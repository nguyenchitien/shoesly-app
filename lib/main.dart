import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoesly/blocs/app_state_bloc.dart';
import 'package:shoesly/blocs/bloc_provider.dart';
import 'package:shoesly/router/app_router.dart';
import 'package:shoesly/router/router_name.dart';
import 'package:shoesly/splash_screen_page.dart';
import 'package:shoesly/themes/app_theme.dart';

void main() {
  runApp(
    ShoeslyApp(),
  );
}

class ShoeslyApp extends StatelessWidget {
  late final appStateBloc = AppStateBloc();
  ShoeslyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: appStateBloc,
      child: StreamBuilder<AppState>(
        stream: appStateBloc.appState,
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data == AppState.loading) {
            return MaterialApp(
              key: const ValueKey('SplashScreen'),
              debugShowCheckedModeBanner: false,
              theme: kLightTheme,
              home: const SplashScreen(),
            );
          }

          SystemChrome.setSystemUIOverlayStyle(
            const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              systemNavigationBarColor: Colors.white,
              systemNavigationBarDividerColor: Colors.white,
              systemNavigationBarIconBrightness: Brightness.dark,
              statusBarIconBrightness:
                  Brightness.dark, // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
          );

          bool isUnAuthorized = snapshot.data == AppState.unAuthorized;
          bool isOnBoard = snapshot.data == AppState.onboard;
          if (isUnAuthorized || isOnBoard) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              key: isOnBoard
                  ? const ValueKey("OnBoard")
                  : const ValueKey("UnAuthorized"),
              theme: kLightTheme,
              initialRoute: RouterNames.root,
              onGenerateRoute: isOnBoard ? AppRouter.generateOnBoardRoute : AppRouter.generateUnAuthorizedRoute,
            );
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: kLightTheme,
            initialRoute: RouterNames.root,
            onGenerateRoute: AppRouter.generateAuthorizedRoute,
          );
        },
      ),
    );
  }
}
