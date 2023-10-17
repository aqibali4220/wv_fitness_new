import 'package:get/get.dart';
import 'package:wv_fitness_new/view/auth/auth_screens/controller/auth_controller.dart';
import 'package:wv_fitness_new/view/auth/splash_screen/controller/splash_controller.dart';
import 'package:wv_fitness_new/view/community_board/controller/community_board_screen.dart';
import 'package:wv_fitness_new/view/goals/controller/goals_controller.dart';
import 'package:wv_fitness_new/view/home/controller/chat_controller.dart';
import 'package:wv_fitness_new/view/home/controller/home_controller.dart';
import 'package:wv_fitness_new/view/home/controller/trainer_controller.dart';
import 'package:wv_fitness_new/view/live_classes/controller/live_session_controller.dart';
import 'package:wv_fitness_new/view/locker/controller/locker_controller.dart';
import 'package:wv_fitness_new/view/resources/controller/credit_controller.dart';
import 'package:wv_fitness_new/view/resources/controller/edit_profile_controller.dart';

import 'general_controllers/hive_controller.dart';



Future  DataBindings() async{



  Get.lazyPut(() => SplashController(),fenix: true);
  Get.lazyPut(() => HomeController(),fenix: true);
  Get.lazyPut(() => HiveController(),fenix: true);
  Get.lazyPut(() => AuthController(),fenix: true);
  Get.lazyPut(() => ChatController(),fenix: true);
  Get.lazyPut(() => TrainerController(),fenix: true);
  Get.lazyPut(() => EditProfileController(),fenix: true);
  Get.lazyPut(() => CreditController(),fenix: true);
  Get.lazyPut(() => CommunityBoardController(),fenix: true);
  Get.lazyPut(() => LockerController(),fenix: true);
  Get.lazyPut(() => LiveSessionController(),fenix: true);
  Get.lazyPut(() => GoalsController(),fenix: true);




}