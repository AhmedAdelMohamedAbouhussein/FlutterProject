import 'package:flutter/material.dart';

import '../resources/AppColor.dart';
import '../resources/AppTextStyles.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
    required this.controller,
    this.validator,
  });

  final String label;
  final String hint;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: AppTextStyles.greyColor16regPoppins.copyWith(
            color: AppColor.greyParagraphColor,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          validator: widget.validator,
          obscureText: widget.isPassword && !isVisible,
          controller: widget.controller,
          style: AppTextStyles.greyColor16regPoppins,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: AppTextStyles.greyColor16regPoppins.copyWith(
              color: AppColor.greyParagraphColor,
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              icon: Icon(
                isVisible ? Icons.visibility_off : Icons.visibility,
              ),
              color: AppColor.whitishTitles,
            )
                : null,
            filled: true,
            fillColor: Color(0xFF3A3B3C),
            border: getBorder(AppColor.greyParagraphColor, false),
            errorBorder: getBorder(AppColor.redErrorColor),
            focusedBorder: getBorder(AppColor.primaryColor),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder getBorder(Color color, [bool isBorderSide = true]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: isBorderSide ? BorderSide(color: color) : BorderSide.none,
    );
  }
}