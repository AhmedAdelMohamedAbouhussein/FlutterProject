import 'dart:async';

import 'package:flutter_app/core/resources/AppColor.dart';
import 'package:flutter_app/core/resources/AppRouter.dart';
import 'package:flutter_app/core/resources/AppIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/storage/SharedPrefsHelper.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(backgroundColor: AppColor.primaryColor, body:Center(child: SvgPicture.asset(AppIcon.logo)), ); //base widget is the Scaffold (body, appBar, floatingActionButton, drawer, bottomNavigationBar, BackgroundColor)
  }

  void init(BuildContext context)
  {
     Timer(Duration(seconds: 3, ),() async {
       SharedPreferences sh = await SharedPreferences.getInstance();
       bool isCompleted = SharedPrefsHelper(sh).isOnboardingCompleted;
       bool isLoggedin = SharedPrefsHelper(sh).isLoggedIn;

       if(isCompleted)
       {
         if (isLoggedin)
         {
           Navigator.pushReplacementNamed(context, Routes.homeRoute);
         }
         else
         {
           Navigator.pushReplacementNamed(context, Routes.loginIn);
         }
       }
       else
       {
         Navigator.pushReplacementNamed(context, Routes.onboardingRoute);
       }
     });
  }
  //push : can go back
  //pushReplacement cant go back
}