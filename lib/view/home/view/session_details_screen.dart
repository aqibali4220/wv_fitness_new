import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/size_config.dart';
import '../../../utils/text_styles.dart';
import '../utils/bottom_nav_bar.dart';
import 'package:get/get.dart';

import 'home_screen.dart';
import 'notification_screen.dart';

class SessionDetailsScreen extends StatelessWidget {
  SessionDetailsScreen({super.key, required this.trainerName});

  String trainerName;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        titleTextStyle: kSize22ColorWhite,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.arrow_back),
          ),
        ),
        centerTitle: true,
        title: Text(trainerName.toString().toUpperCase().toString()),
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
          GestureDetector(
            onTap: () {
              Get.off(() => HomeScreen(), transition: Transition.noTransition);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1 Session",
                    style: kSize32W700ColorBlack.copyWith(
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: black.withOpacity(0.2),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Type".toUpperCase(),
                        style: kSize18W600ColorBlack.copyWith(
                            color: black.withOpacity(0.6),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: getHeight(12),
                      ),
                      const Text("On Going", style: kSize18W600ColorBlack)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Required Credits".toUpperCase(),
                        style: kSize18W600ColorBlack.copyWith(
                            color: black.withOpacity(0.6),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: getHeight(12),
                      ),
                      Text("80", style: kSize18W600ColorBlack.copyWith(color: Colors.orangeAccent))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Available Credits".toUpperCase(),
                        style: kSize18W600ColorBlack.copyWith(
                            color: black.withOpacity(0.6),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: getHeight(12),
                      ),
                      Text("0", style: kSize18W600ColorBlack.copyWith(color: red))
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: getHeight(30),
              ),
              Text(
                "Biography".toUpperCase(),
                style: kSize18W600ColorBlack.copyWith(
                    color: black.withOpacity(0.6),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: getHeight(12),
              ),
              const Text("1 Session", style: kSize18W600ColorBlack),
              SizedBox(
                height: getHeight(30),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: getHeight(60),
                      width: getWidth(200),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.orangeAccent
                      ),
                      child: Center(child: Text("View Schedule",style: kSize22ColorBlack.copyWith(color: white,fontWeight: FontWeight.w400),),),
                    ),
                  ),
                  SizedBox(height: getHeight(12),),
                  Center(
                    child: Container(
                      height: getHeight(60),
                      width: getWidth(150),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.orangeAccent
                      ),
                      child: Center(child: Text("Book Now",style: kSize22ColorBlack.copyWith(color: white,fontWeight: FontWeight.w400),),),
                    ),
                  ),
                  SizedBox(height: getHeight(12),),
                  Center(
                    child: Container(
                      height: getHeight(60),
                      width: getWidth(220),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.red
                      ),
                      child: Center(child: Text("Purchase Credits",style: kSize22ColorBlack.copyWith(color: white,fontWeight: FontWeight.w400),),),
                    ),
                  ),
                  SizedBox(height: getHeight(12),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
