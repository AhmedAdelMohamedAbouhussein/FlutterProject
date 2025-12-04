import 'package:flutter_app/features/auth/widgets/authHeader.dart';
import 'package:flutter_app/features/auth/widgets/loginForm.dart';
import 'package:flutter/material.dart';

import '../../../core/commanWidgets/AppRichText.dart';
import '../../../core/resources/AppRouter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthHeader(
                authTitle: 'Hello',
                authDescription: '',
                color: 1,
              ),
              AuthHeader(
                authTitle: 'Again!',
                authDescription: 'Welcome back you’ve been missed',
                color: 2,
              ),
              const SizedBox(height: 40),
              LoginForm(),
              SizedBox(height: 24),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.signUp);
                  },
                  child: AppRichText(
                    originalText: 'Don\'t have an account? ',
                    highlightedText: 'Sign In',
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
