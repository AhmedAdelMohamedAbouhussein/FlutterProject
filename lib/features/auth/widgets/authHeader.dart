import 'package:flutter/material.dart';

import '../../../core/resources/AppTextStyles.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.color,
    required this.authTitle,
    required this.authDescription,
  });

  final String authTitle;
  final String authDescription;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          authTitle,
          style: color == 1
              ? AppTextStyles.whiteColor48BoldPoppins.copyWith(height: 1)
              : AppTextStyles.blueColor48BoldPoppins,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Text(
            authDescription,
            style: AppTextStyles.greyColor20semiPoppins,
          ),
        ),
      ],
    );
  }

}