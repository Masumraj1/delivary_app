import 'dart:async';
import 'package:delivary/utils/app_colors.dart';
import 'package:delivary/utils/app_icons.dart';
import 'package:delivary/view/widgets/image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/route/app_routes.dart';
import 'utils/device_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    DeviceUtils.allScreenUtils();
    Timer(const Duration(seconds: 3), () {
      Get.offAndToNamed(AppRoutes.onBoardingScreen);
    });
    super.initState();
  }

  @override
  void dispose() {
    DeviceUtils.allScreenUtils();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.splashBackgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          child: Center(
            child: CustomImage(
              imageSrc: AppIcons.logo,
              imageType: ImageType.svg,
            ),
          ),
        ),
      ),
    );
  }
}
