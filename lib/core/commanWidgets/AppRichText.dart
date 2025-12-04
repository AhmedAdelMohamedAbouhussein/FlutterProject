import 'package:flutter_app/core/resources/AppColor.dart';
import 'package:flutter/material.dart';

import '../resources/AppTextStyles.dart';

class AppRichText extends StatelessWidget {
  const AppRichText({
    super.key,
    required this.originalText,
    required this.highlightedText,
  });

  final String originalText;
  final String highlightedText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: originalText,
        style: AppTextStyles.greyColor16regPoppins,
        children: [
          TextSpan(
            text: highlightedText,
            style: AppTextStyles.greyColor16regPoppins.copyWith(
              color: AppColor.blueTitles,
            ),
          ),
        ],
      ),
    );
  }
}