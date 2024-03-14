import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class DeviceUtils {
  static void allScreenUtils() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.white,
      statusBarColor: AppColors.white,
      systemStatusBarContrastEnforced: true,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}
