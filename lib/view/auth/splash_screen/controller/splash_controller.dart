

import 'package:get/get.dart';

import '../../../../data/general_controllers/hive_controller.dart';
import '../../../../utils/const.dart';

class SplashController extends GetxController{


  checkSession() {
    if (Get.find<HiveController>()
        .lovedBox
        .get(cUserSession, defaultValue: false) ==
        true) {
      // Get.to(() =>  HomeScreen());
    } else {
      // Get.offAll(() => LoginScreen());
    }
  }



}