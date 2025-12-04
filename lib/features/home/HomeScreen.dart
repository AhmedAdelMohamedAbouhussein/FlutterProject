import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/constants/uiConstants/AppUiConstants.dart';
import '../../core/resources/AppColor.dart';
import '../../core/resources/AppTextStyles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.primaryColor,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.blueTitles,
        unselectedItemColor: AppColor.whitishTitles,
        items: AppUiConstants.bottomNavItems
            .map(
              (e) => BottomNavigationBarItem(
            icon: SvgPicture.asset(
              e.icon,
              colorFilter: ColorFilter.mode(
                pageIndex == AppUiConstants.bottomNavItems.indexOf(e)
                    ? AppColor.blueTitles
                    : AppColor.whitishTitles,
                BlendMode.srcIn,
              ),
            ),
            label: e.label,
          ),
        )
            .toList(),
        unselectedLabelStyle: AppTextStyles.whiteColor16semiPoppins,
        selectedLabelStyle: AppTextStyles.whiteColor16semiPoppins,
      ),
    );
  }
}