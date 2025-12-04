import 'package:flutter_app/features/onboarding/presentation/widgets/OnboardingItem.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();

}

class _OnboardingScreenState extends State<OnboardingScreen>
{
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnboardingItem(pageIndex: pageIndex,));
  }
}



