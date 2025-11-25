// contains route names
import 'package:assignment1/features/auth/LoginScreen.dart';
import 'package:assignment1/features/home/HomeScreen.dart';
import 'package:assignment1/features/onboarding/OnboardingScreen.dart';
import 'package:assignment1/features/splashScreen.dart';
import '../features/auth/SignupScreen.dart';
import 'package:assignment1/resources/AppColor.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();
  static const String splashRoute = '/';
  static const String homeRoute = '/home';
  static const String onboardingRoute = '/onboarding';
  static const String loginIn = '/login';
  static const String signUp = '/signup';
}

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings)
  {
    switch(settings.name)
    {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) => SplashScreen(),);
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (context) => OnboardingScreen(),);
      case Routes.loginIn:
        return MaterialPageRoute(builder: (context) => LoginScreen(),);
      case Routes.signUp:
        return MaterialPageRoute(builder: (context) => SignupScreen(),);
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (context) => HomeScreen(),);
      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute()
  {
      return MaterialPageRoute(builder: (context) => Scaffold(backgroundColor: AppColor.whiteColor, body: Center(child: Text('Route not defined'),),),);
  }
}