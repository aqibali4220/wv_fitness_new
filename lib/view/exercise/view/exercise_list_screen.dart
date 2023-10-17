import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:wv_fitness_new/view/exercise/view/exercise_explain_screen.dart';

import '../../../utils/colors.dart';
import '../../../utils/size_config.dart';
import '../../../utils/text_styles.dart';
import '../../home/utils/bottom_nav_bar.dart';
import '../../home/view/home_screen.dart';
import '../../home/view/notification_screen.dart';

class ExerciseListScreen extends StatelessWidget {
  const ExerciseListScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getHeight(15),
            ),
            const Text(
              "Best Fat lose\nworkouts for You!",
              style: kSize32W700ColorBlack,
            ),
            SizedBox(
              height: getHeight(12),
            ),
            Text(
              "Recommended by coach",
              style: kSize16W500ColorBlack.copyWith(color: Colors.orangeAccent),
            ),
            SizedBox(
              height: getHeight(12),
            ),
            GestureDetector
              (
              onTap: (){
                Get.to(()=>ExerciseExplainScreen(),transition: Transition.rightToLeft);
              },
              child: Container(
                height: getHeight(500),
                width: getWidth(414),
                decoration: BoxDecoration(
                    // color: red,
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/exercise_1.png"),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      right: 0,
                      child: Container(
                        height: getHeight(35),
                        width: getWidth(100),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                topLeft: Radius.circular(40)),
                            color: black.withOpacity(0.4)),
                        child: const Center(
                            child: Text(
                          "7 days / week",
                          style: kSize12ColorWhite,
                        )),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: getHeight(35),
                        // width: getWidth(100),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                topLeft: Radius.circular(40)),
                            color: black.withOpacity(0.4)),
                        child: const Center(
                            child: Text(
                          "Advanced",
                          style: kSize12ColorWhite,
                        )),
                      ),
                    ),
                    Positioned(
                        bottom: 80,
                        left: 15,
                        child: Text("3 Month From Fat to Fit",style: kSize32W700ColorBlack.copyWith(color: white),)),
                    Positioned(
                      bottom: 50,
                      left: 15,
                      child: Row(
                        children: [
                        Text("View Routine",style: kSize16W400ColorBlack.copyWith(color: white),),
                        SizedBox(width: getWidth(12),),
                          Icon(Icons.double_arrow,color: Colors.orangeAccent,)
                      ],),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 10,
                      right: 10,

                      child: LinearPercentIndicator(
                        barRadius: Radius.circular(20),
                        lineHeight: 20.0,
                        padding:
                        EdgeInsets.zero,
                        width: getWidth(370),
                        // percent: 0.2,
                        percent: 0.8,
                        center: Text("70% Completed",style: kSize12ColorWhite,),
                        backgroundColor:
                        Colors.orangeAccent.withOpacity(0.2),
                        progressColor:
                        Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
