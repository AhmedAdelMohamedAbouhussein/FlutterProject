import 'package:assignment1/app/App.dart';
import 'package:assignment1/constants/uiConstants/AppUiConstants.dart';
import 'package:assignment1/resources/AppButtonStyle.dart';
import 'package:assignment1/resources/AppColor.dart';
import 'package:assignment1/resources/AppRouter.dart';
import 'package:assignment1/resources/AppTextStyles.dart';
import 'package:assignment1/resources/AppIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingItem extends StatefulWidget
{
  final int pageIndex;
  const OnboardingItem({super.key, required this.pageIndex});

  @override
  State<OnboardingItem> createState() => _OnboardingItemState();
}

class _OnboardingItemState extends State<OnboardingItem> {

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.pageIndex; // initialize from constructor
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          Image.asset(
            AppUiConstants.onboardingData[currentIndex].image,
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
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: SizedBox(
                      height: 20,
                      child: Row(
                        children: List.generate(
                          AppUiConstants.onboardingData.length,
                              (index) => AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: currentIndex == index
                                  ? AppColor.blueTitles
                                  : AppColor.greyParagraphColor,
                              shape: BoxShape.circle,
                            ),
                            margin: EdgeInsets.only(right: 6),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (currentIndex > 0)
                    {
                      setState(()
                      {
                        currentIndex--;
                      });
                    }
                  },
                  child: Text(
                    'Back',
                    style: AppTextStyles.greyColor16regPoppins,
                  ),
                ),
                SizedBox(width: 16), // gap between buttons
                ElevatedButton(
                  onPressed: () {
                    if (currentIndex == 2)
                    {
                      // Navigate to Login page
                      Navigator.pushReplacementNamed(context, Routes.homeRoute);
                    }
                    else
                    {
                      setState(()
                      {
                        currentIndex++;
                      });
                    }
                  },
                  style: AppButtonStyle.primaryButtonStyle,
                  child: Text(
                    AppUiConstants.onboardingData[currentIndex].buttonText,
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