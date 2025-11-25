import 'package:flutter/material.dart';

import '../../../commanWidgets/AppTextField.dart';
import '../../../resources/AppButtonStyle.dart';
import '../../../resources/AppRouter.dart';
import '../../../resources/AppTextStyles.dart';
import '../../../util/validation/AppValidator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            validator: (value) => AppValidator.validateEmail(value),
            label: 'Email',
            hint: 'Your Email',
            controller: _emailController,
          ),
          SizedBox(height: 16),
          AppTextField(
            validator: (value) => AppValidator.validatePassword(value),
            label: 'Password',
            hint: 'Your Password',
            isPassword: true,
            controller: _passwordController,
          ),
          SizedBox(height: 16),
          Text(
            'Forget Password?',
            style: AppTextStyles.greyColor16regPoppins.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            style: AppButtonStyle.primaryButtonStyle.copyWith(
              minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)), // full width, 50 height
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                debugPrint(
                  'Email ${_emailController.text}, Password ${_passwordController.text}',
                );
                Navigator.pushReplacementNamed(context, Routes.homeRoute);
              }
            },
            child: Text('Login', style: AppTextStyles.whitishColor16semiPoppins),
          ),
        ],
      ),
    );
  }
}