import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/utils/text_styles.dart';
import 'package:wv_fitness_new/view/home/view/home_screen.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../utils/bottom_nav_bar.dart';
import 'notification_screen.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({super.key});

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

        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.asset(
            app_logo,
          ),
        ),
        centerTitle: true,
        title: Text("check1".tr.toString().toUpperCase().toString()),
        actions: [
          GestureDetector(
            onTap: (){
              Get.to(()=>NotificationScreen(),transition: Transition.noTransition);
            },
            child: Icon(
              Icons.notifications,
              size: getHeight(30),
            ),
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
      body: Column(
        children: [
          SizedBox(height: getHeight(20),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("check2".tr,style: kSize22ColorBlack,),
          ),

          SizedBox(height: getHeight(20),),
          Center(
            child: Container(
              height: getHeight(100),
              width: getWidth(100),
              decoration:
               BoxDecoration(shape: BoxShape.circle, color: white, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 10.0,
                  offset: Offset(0, 10),
                ),
              ],),
              child: Icon(Icons.arrow_downward,size: getHeight(50),color: black,),
            ),
          ),
        ],
      ),
    );
  }
}
