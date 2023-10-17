import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/auth/auth_screens/view/login_screen.dart';
import 'package:wv_fitness_new/view/auth/splash_screen/controller/splash_controller.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/images.dart';
import '../../../../utils/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      // Get.find<SplashController>().checkSession();
    Get.to(()=>LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: Image.asset(
          app_logo,
          width: getWidth(200),
          height: getHeight(200),
        ),
      ),
    );
  }
}
