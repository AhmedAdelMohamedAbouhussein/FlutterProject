import 'package:flutter/material.dart';
import 'AppColor.dart';

class AppTextStyles
{
  static const String fontFamily = "Poppins";

  AppTextStyles._();
  static const TextStyle whitishColor24Poppins = TextStyle(
      color: AppColor.whitishTitles,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      fontFamily: fontFamily
  );
  static const TextStyle greyColor16regPoppins = TextStyle(
      color: AppColor.greyParagraphColor,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: fontFamily
  );
  static const TextStyle whitishColor16semiPoppins = TextStyle(
      color: AppColor.whitishTitles,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      fontFamily: fontFamily
  );
  static const TextStyle whiteColor16semiPoppins = TextStyle(
      color: AppColor.whitishTitles,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      fontFamily: fontFamily
  );
}