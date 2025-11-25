import 'package:flutter/material.dart';

import '../../../commanWidgets/AppTextField.dart';
import '../../../resources/AppButtonStyle.dart';
import '../../../resources/AppRouter.dart';
import '../../../resources/AppTextStyles.dart';
import '../../../util/validation/AppValidator.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your full name';
              }
              return null;
            },
            label: 'Full Name',
            hint: 'Your Name',
            controller: _nameController,
          ),
          const SizedBox(height: 16),
          AppTextField(
            validator: (value) => AppValidator.validateEmail(value),
            label: 'Email',
            hint: 'Your Email',
            controller: _emailController,
          ),
          const SizedBox(height: 16),
          AppTextField(
            validator: (value) => AppValidator.validatePassword(value),
            label: 'Password',
            hint: 'Your Password',
            isPassword: true,
            controller: _passwordController,
          ),
          const SizedBox(height: 16),
          AppTextField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password';
              }
              if (value != _passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
            label: 'Confirm Password',
            hint: 'Re-enter Password',
            isPassword: true,
            controller: _confirmPasswordController,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            style: AppButtonStyle.primaryButtonStyle.copyWith(
              minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)), // full width
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                debugPrint(
                  'Name: ${_nameController.text}, Email: ${_emailController.text}, Password: ${_passwordController.text}',
                );
                Navigator.pushReplacementNamed(context, Routes.loginIn);
              }
            },
            child: Text('Sign Up', style: AppTextStyles.whitishColor16semiPoppins),
          ),
        ],
      ),
    );
  }
}
