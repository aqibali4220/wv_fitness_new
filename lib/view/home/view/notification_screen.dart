import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/size_config.dart';
import '../../../utils/text_styles.dart';
import '../utils/bottom_nav_bar.dart';
import 'home_screen.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar:  BottomNavBar(),
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        titleTextStyle: kSize22ColorWhite,

        leading: GestureDetector(
          onTap: (){
            Get.off(()=>HomeScreen(),transition: Transition.noTransition);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.arrow_back),
          ),
        ),
        centerTitle: true,
        title: Text("noti1".tr.toString().toUpperCase().toString()),
        actions: [
          Icon(
            Icons.notifications,
            size: getHeight(30),
          ),
          SizedBox(
            width: getWidth(6),
          ),
          GestureDetector(
            onTap: (){
              Get.off(()=>HomeScreen(),transition: Transition.noTransition);
            },
            child: Icon(
              Icons.home,
              size: getHeight(35),
            ),
          ),
          SizedBox(
            width: getWidth(15),
          ),
        ],
      ),

    );
  }
}
