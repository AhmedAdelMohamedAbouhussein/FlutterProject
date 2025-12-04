import 'package:flutter_app/core/resources/AppColor.dart';
import 'package:flutter_app/core/resources/AppRouter.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: Routes.splashRoute,
        theme: ThemeData(scaffoldBackgroundColor: AppColor.primaryColor, fontFamily: "Poppins")
    );
  }

}

/* App : root os the Application */

/* Navigation in flutter
*   Navigator Class
*     - Page Routes
*     - Named Navigation
*     - OnGenerateRoute //this is the one well use the classic way
*   routing Packages ( e.g. GoRouter, AutoRoute) // Best modern ways
*
*
* */