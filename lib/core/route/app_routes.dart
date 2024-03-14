

import 'package:delivary/splass_screen.dart';
import 'package:delivary/view/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:get/get.dart';

import '../../view/screens/authentication/sign_in_Screen.dart';
import '../../view/screens/dash_board_screen/dash_board_screeb.dart';

class AppRoutes {
  static String splashScreen = "/splash_screen";
  static String onBoardingScreen = "/OnBoardingScreen";
  static String signInScreen = "/signInScreen";
  static String homeScreen = "/homeScreen";

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onBoardingScreen, page: () => const OnBoardIngScreen()),
    GetPage(name: signInScreen, page: () => const SignInScreen()),
    GetPage(name: homeScreen, page: () => const DashBoardScreen()),


  ];
}
