import 'package:assignment1/resources/AppButtonStyle.dart';
import 'package:assignment1/resources/AppTextStyles.dart';
import 'package:assignment1/resources/AppIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingItem extends StatelessWidget
{

  const OnboardingItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          Image.asset(
            AppIcon.onboardPNG1,
            width: 428,
            height: 584,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum is simply dummy',
                  style: AppTextStyles.whitishColor24Poppins,
                ),
                SizedBox(height: 12),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: AppTextStyles.greyColor16regPoppins,
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(right: 24), // left padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end, // align to left
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Back',
                    style: AppTextStyles.greyColor16regPoppins,
                  ),
                ),
                SizedBox(width: 16), // gap between buttons
                ElevatedButton(
                  onPressed: () {},
                  style: AppButtonStyle.primaryButtonStyle,
                  child: Text(
                    'Next',
                    style: AppTextStyles.whiteColor16semiPoppins,
                  )
                ),
              ],
            ),
          )

        ],
      ),
    );
  }

}