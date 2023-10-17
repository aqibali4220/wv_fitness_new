import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/utils/text_styles.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../utils/bottom_nav_bar.dart';
import 'home_screen.dart';
import 'notification_screen.dart';

class ReferalScreen extends StatelessWidget {
  const ReferalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar:  BottomNavBar(),
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.asset(
            app_logo,
          ),
        ),
        centerTitle: true,
        title: Text("refer1".tr.toString().toUpperCase().toString()),
        titleTextStyle: kSize22ColorWhite,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: getHeight(15),),
            Container(
              padding: EdgeInsets.all(15),
              height: getHeight(130),
              width: getWidth(414),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: greyFont.withOpacity(0.45)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("refer2".tr,style: kSize28W700ColorWhite.copyWith(fontSize: getFont(24),color: black),),
                  SizedBox(height: getHeight(15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("https://aqib.com/share".tr,style: kSize22ColorBlack.copyWith(fontWeight: FontWeight.w400),),
                      Container(
                        height: getHeight(30),
                        width: getWidth(30),
                        decoration: BoxDecoration(
                          color: black
                        ),
                        child: Icon(Icons.ios_share_outlined,color: white,size: getHeight(18),),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: getHeight(15),),
            Text("refer3".tr,style: kSize18W600ColorBlack,),
            SizedBox(height: getHeight(15),),
            Text("refer4".tr,style: kSize18W600ColorBlack.copyWith(color: black,fontWeight: FontWeight.w400,),),
            Text("refer5".tr,style: kSize18W600ColorBlack.copyWith(color: black,fontWeight: FontWeight.w400,),),
            SizedBox(height: getHeight(50),),
            Text("refer6".tr,style: kSize18W600ColorBlack,),
            SizedBox(height: getHeight(15),),
            Text("refer7".tr,style: kSize18W600ColorBlack,),
            SizedBox(height: getHeight(15),),
            Text("refer8".tr,style: kSize18W600ColorBlack,),
            SizedBox(height: getHeight(15),),

          ],
        ),
      ),
    );
  }
}
