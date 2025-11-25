import 'package:assignment1/features/auth/widgets/SignupForm.dart';
import 'package:flutter/material.dart';
import 'package:assignment1/features/auth/widgets/authHeader.dart';
import '../../commanWidgets/AppRichText.dart';
import '../../resources/AppRouter.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthHeader(
                authTitle: 'Hello',
                authDescription: 'Signup to get Started',
                color: 2,
              ),
              const SizedBox(height: 40),
              SignupForm(), // your form widget for signup
              const SizedBox(height: 24),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.loginIn);
                  },
                  child: AppRichText(
                    originalText: 'Already have an account? ',
                    highlightedText: 'Login',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
