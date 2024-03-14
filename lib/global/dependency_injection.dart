import 'package:get/get.dart';

import '../controllers/authController.dart';


class Dependancy extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController(), fenix: true);
  }
}
