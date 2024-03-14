import 'package:delivary/core/route/app_routes.dart';
import 'package:delivary/utils/app_colors.dart';
import 'package:delivary/utils/app_images.dart';
import 'package:delivary/utils/app_strings.dart';
import 'package:delivary/view/widgets/button/custom_elevated_button.dart';
import 'package:delivary/view/widgets/image/custom_image.dart';
import 'package:delivary/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardIngScreen extends StatelessWidget {
  const OnBoardIngScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 49),
              child: CustomImage(
                  imageSrc: AppImages.onBordingLogo,
                imageType: ImageType.png,
                size: 300
                ,
              ),
            ),
          ),
          SizedBox(
            height: 82,
          ),
          CustomText(
            text: AppStrings.getStarted,
            color: AppColors.boldTextColor,
            fontSize: 26.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomText(
              text: AppStrings.pleaseCreateAnAccount,
              color: AppColors.smallTextColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              maxLines: 2,
            ),
          ),
          SizedBox(
            height:58.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: CustomElevatedButton(
                      onPressed: (){
                        Get.toNamed(AppRoutes.homeScreen);
                      },
                      titleText: AppStrings.skip,
                    titleColor: AppColors.continueButtonColor,
                    buttonColor: AppColors.skipButton,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  flex: 5,
                  child: CustomElevatedButton(
                      onPressed: (){
                        Get.toNamed(AppRoutes.signInScreen);
                      },
                      titleText: AppStrings.continues,

                    titleColor: AppColors.white,
                    buttonColor: AppColors.continueButtonColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
