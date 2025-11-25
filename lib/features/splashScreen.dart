
import 'dart:async';

import 'package:assignment1/resources/AppColor.dart';
import 'package:assignment1/resources/AppRouter.dart';
import 'package:assignment1/resources/AppIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(backgroundColor: AppColor.primaryColor, body:Center(child: SvgPicture.asset(AppIcon.logo)), ); //base widget is the Scaffold (body, appBar, floatingActionButton, drawer, bottomNavigationBar, BackgroundColor)
  }

  void init(BuildContext context)
  {
     Timer(Duration(seconds: 3,),() {
       Navigator.pushReplacementNamed(context, Routes.onboardingRoute);
     });
  }
  //push : can go back
  //pushReplacement cant go back
}