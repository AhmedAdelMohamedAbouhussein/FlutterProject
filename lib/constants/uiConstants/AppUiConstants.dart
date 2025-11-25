
import 'package:assignment1/features/onboarding/uiModel/OnboardingData.dart';
import 'package:assignment1/resources/AppIcon.dart';
import 'package:flutter/cupertino.dart';

import '../../features/home/uiModel/NavItem.dart';

class AppUiConstants
{
  const AppUiConstants._();

  static List<OnboardingData> onboardingData = [
    OnboardingData( AppIcon.onboardPNG1, 'next'),
    OnboardingData( AppIcon.onboardPNG2, 'next'),
    OnboardingData( AppIcon.onboardPNG3, 'Get Started')
  ];

  static List<NavItem> bottomNavItems = [
    NavItem(icon: AppIcon.home, label: 'Home', page: Container()),
    NavItem(icon: AppIcon.explore, label: 'Category', page: Container()),
    NavItem(icon: AppIcon.bookmark, label: 'Cart', page: Container()),
    NavItem(icon: AppIcon.profile, label: 'Profile', page: Container()),
  ];
}
