import 'package:delivary/core/route/app_routes.dart';
import 'package:delivary/utils/app_colors.dart';
import 'package:delivary/utils/app_icons.dart';
import 'package:delivary/utils/app_strings.dart';
import 'package:delivary/view/widgets/button/custom_elevated_button.dart';
import 'package:delivary/view/widgets/image/custom_image.dart';
import 'package:delivary/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controllers/authController.dart';
import '../../widgets/text_field/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  AuthController controller = Get.find<AuthController>();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: 180.h,),
                Center(
                  child: CustomImage(
                      imageSrc: AppIcons.signInLogo,
                    imageType: ImageType.svg,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: AppStrings.loginToYourAccount,
                  color: AppColors.smallTextColor,
                  fontSize:16.sp ,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomTextField(
                    textEditingController: controller.emailController,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,
                    hintText: AppStrings.enterYourEmail,
                    hintStyle: GoogleFonts.jost(
                        fontSize: 14.h,
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintColor),
                    inputTextStyle: GoogleFonts.prompt(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.h,
                        color: AppColors.hintColor),
                    fieldBorderColor: AppColors.borderColor,
                    fieldBorderRadius: 8,
                    isPrefixIcon: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.enterValidEmail;
                      } else if (!AppStrings.emailRegexp
                          .hasMatch(controller.emailController.text)) {
                        return AppStrings.enterValidEmail;
                      } else {
                        return null;
                      }
                    }
                  ),
                SizedBox(
                  height: 12.h,
                ),
                CustomTextField(
                  textEditingController: controller.passwordController,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                  hintText: AppStrings.enterYourPassword,
                  hintStyle: GoogleFonts.jost(
                      fontSize: 14.h,
                      fontWeight: FontWeight.w400,
                      color: AppColors.hintColor),
                  inputTextStyle: GoogleFonts.prompt(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.h,
                      color: AppColors.black),
                  fieldBorderColor: AppColors.borderColor,
                  fieldBorderRadius: 8,
                  isPrefixIcon: true,
                  isPassword: true,
                  validator: (name) => name!.length < 6
                      ? AppStrings.passwordValidatorString
                      : null,

                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: (){

                      }, child: CustomText(
                    text: AppStrings.forgetPassword,
                    color: AppColors.continueButtonColor,
                  )),
                ),
             SizedBox(
               height: 110.h,
             ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      CustomImage(
                          imageSrc: AppIcons.phoneIcon,imageType: ImageType.svg,),
                     TextButton(onPressed: (){
                     }, child: CustomText(
                       text: AppStrings.loginWithPhoneNumber,
                       color: AppColors.continueButtonColor,
                     ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomElevatedButton(
                  onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      Get.toNamed(AppRoutes.homeScreen);
                    }
                  }, titleText: AppStrings.login,
                  titleColor: Colors.white,
                  buttonColor: AppColors.continueButtonColor,
                  buttonWidth: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
