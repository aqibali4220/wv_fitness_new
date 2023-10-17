import 'package:flutter/material.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../home/utils/bottom_nav_bar.dart';
import '../../home/view/notification_screen.dart';
class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        titleTextStyle: kSize22ColorWhite,
        centerTitle: true,
        title: Text("Daily Goals".tr.toString().toUpperCase().toString()),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.arrow_back),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => NotificationScreen(),
                  transition: Transition.noTransition);
            },
            child: Icon(
              Icons.notifications,
              size: getHeight(30),
            ),
          ),
          SizedBox(
            width: getWidth(6),
          ),
          Icon(
            Icons.home,
            size: getHeight(35),
          ),
          SizedBox(
            width: getWidth(15),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(30),
              ),
              Text("Click all you completed! Each is worth 1 point daily.",style: kSize14ColorBlack.copyWith(fontWeight: FontWeight.w500),),

              SizedBox(height: getHeight(20),),
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Perform at least 10 minutes of resistance and 10 mint of cardio".toUpperCase(),style: kSize22ColorBlack.copyWith(fontWeight: FontWeight.w600),textAlign: TextAlign.center),
                  SizedBox(height: getHeight(20),),
                  Container(
                    height: getHeight(160),
                    width: getWidth(160),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlue
                    ),
                    child: Center(
                      child: Image.asset("assets/home_images/icons8-dumbell-53.png",color: white,),

                    ),
                  ),
                  SizedBox(height: getHeight(20),),
                  Text("Meditate to reduce your stress for at least 15 min".toUpperCase(),style: kSize22ColorBlack.copyWith(fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                  SizedBox(height: getHeight(20),),
                  Container(
                    height: getHeight(160),
                    width: getWidth(160),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow
                    ),
                    child: Center(
                      child: Image.asset("assets/home_images/icons8-meditation-50.png",color: white,),

                    ),
                  ),
                  SizedBox(height: getHeight(20),),
                  Text("Journal and view food as fuel(superfoods , clean foods )".toUpperCase(),style: kSize22ColorBlack.copyWith(fontWeight: FontWeight.w600),textAlign: TextAlign.center),
                  SizedBox(height: getHeight(20),),
                  Container(
                    height: getHeight(160),
                    width: getWidth(160),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pinkAccent
                    ),
                    child: Center(
                      child: Image.asset("assets/home_images/icons8-utensil-50.png",color: white,),

                    ),
                  ),
                  SizedBox(height: getHeight(20),),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
