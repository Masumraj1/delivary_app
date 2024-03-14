
import 'package:delivary/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../text/custom_text.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;

  const NavBar({required this.currentIndex, super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var bottomNavIndex = 0;

  List<String> selectedIcon = [
    AppIcons.dashboard,
    AppIcons.dolar,
    AppIcons.parsel,
    AppIcons.profile,
  ];

  List<String> selectedText = [
    AppStrings.dashboard,
    AppStrings.payment,
    AppStrings.parcel,
    AppStrings.profile
  ];

  List<String> unselectedIcon = [
    AppIcons.dashboard,
    AppIcons.dolar,
    AppIcons.parsel,
    AppIcons.profile,
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: MediaQuery.of(context).size.width,
      padding:
      const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
      alignment: Alignment.center,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          unselectedIcon.length,
              (index) => InkWell(
            onTap: () => onTap(index),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                index != bottomNavIndex
                    ? SvgPicture.asset(selectedIcon[index],
                    // ignore: deprecated_member_use
                    color: AppColors.black,
                    height: 24.h,
                    width: 24.w)
                    : SvgPicture.asset(unselectedIcon[index],
                    // ignore: deprecated_member_use
                    color: AppColors.continueButtonColor,
                    height: 24.h,
                    width: 24.w),
                const SizedBox(
                  height: 4,
                ),
                CustomText(
                  color: index == bottomNavIndex
                      ? AppColors.continueButtonColor
                      : AppColors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  text: selectedText[index],
                ),
                index == bottomNavIndex
                    ? Container(
                  width: 8.w,
                  height: 8.h,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                )
                    : const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTap(int index) {

    if (index == 0) {
      if (!(widget.currentIndex == 0)) {
        // Get.offAll(() => const DashBoardScreen(),
        //     transition: Transition.noTransition);
      }
    } else if (index == 1) {
      if (!(widget.currentIndex == 1)) {
        // Get.offAll(() => PaymentScreen(),
        //     transition: Transition.noTransition);
      }
    } else if (index == 2) {
      if (!(widget.currentIndex == 2)) {
        // Get.offAll(() => const ParcelScreen(),
        //     transition: Transition.noTransition);
      }
    } else if (index == 3) {
      if (!(widget.currentIndex == 3)) {
        // Get.offAll(() => const ProfileScreen(),
        //     transition: Transition.noTransition);
      }
    }
  }
}