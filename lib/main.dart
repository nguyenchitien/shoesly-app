import 'package:flutter/material.dart';
import 'package:shoesly/blocs/app_state_bloc.dart';
import 'package:shoesly/modules/home/pages/home_page.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    // return BlocProvider(
    //   bloc: appStateBloc,
    //   child: StreamBuilder<AppState>(
    //     stream: appStateBloc.appState,
    //     builder: (context, snapshot) {
    //       if (!snapshot.hasData || snapshot.data == AppState.loading) {
    //         return MaterialApp(
    //           key: const ValueKey('SplashScreen'),
    //           debugShowCheckedModeBanner: false,
    //           theme: kLightTheme,
    //           home: const SplashScreen(),
    //         );
    //       }
    //
    //       SystemChrome.setSystemUIOverlayStyle(
    //         const SystemUiOverlayStyle(
    //           statusBarColor: Colors.white,
    //           systemNavigationBarColor: Colors.white,
    //           systemNavigationBarDividerColor: Colors.white,
    //           systemNavigationBarIconBrightness: Brightness.dark,
    //           statusBarIconBrightness:
    //               Brightness.dark, // For Android (dark icons)
    //           statusBarBrightness: Brightness.light, // For iOS (dark icons)
    //         ),
    //       );
    //
    //       bool isUnAuthorized = snapshot.data == AppState.unAuthorized;
    //       bool isOnBoard = snapshot.data == AppState.onboard;
    //       if (isUnAuthorized || isOnBoard) {
    //         return MaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           key: isOnBoard
    //               ? const ValueKey("OnBoard")
    //               : const ValueKey("UnAuthorized"),
    //           theme: kLightTheme,
    //           initialRoute: RouterNames.root,
    //           onGenerateRoute: isOnBoard ? AppRouter.generateOnBoardRoute : AppRouter.generateUnAuthorizedRoute,
    //         );
    //       }
    //       return MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         theme: kLightTheme,
    //         initialRoute: RouterNames.root,
    //         onGenerateRoute: AppRouter.generateAuthorizedRoute,
    //       );
    //     },
    //   ),
    // );
  }
}
