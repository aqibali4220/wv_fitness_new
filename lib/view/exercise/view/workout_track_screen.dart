import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/utils/text_styles.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/exercise/view/all_exercise_screen.dart';
import '../../../utils/colors.dart';
import '../../home/view/notification_screen.dart';

class WorkoutTrackScreen extends StatelessWidget {
  const WorkoutTrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        titleTextStyle: kSize22ColorWhite,
        // centerTitle: true,
        // title: Text("Daily Goals".tr.toString().toUpperCase().toString()),
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

      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getHeight(60),
            ),
            Text(
              "3 Month From Fat to Fit",
              style: kSize22ColorBlack.copyWith(color: black),
            ),
            SizedBox(
              height: getHeight(12),
            ),
            Text(
              "Exercise: 7 days/ week",
              style: kSize12ColorWhite.copyWith(color: black, fontSize: 14),
            ),
            SizedBox(
              height: getHeight(12),
            ),
            LinearPercentIndicator(
              barRadius: const Radius.circular(20),
              lineHeight: 20.0,
              padding: EdgeInsets.zero,
              width: getWidth(382),
              // percent: 0.2,
              percent: 0.8,
              center: const Text(
                "70% Completed",
                style: kSize12ColorWhite,
              ),
              backgroundColor: Colors.orangeAccent.withOpacity(0.2),
              progressColor: Colors.orangeAccent,
            ),
            SizedBox(
              height: getHeight(20),
            ),
            const Center(
                child: Text(
              "Week-1",
              style: kSize22ColorBlack,
            )),
            SizedBox(
              height: getHeight(20),
            ),
            Container(
              height: getHeight(150),
              width: getWidth(414),
              decoration: const BoxDecoration(
                  // color: red
                  ),
              child: Stack(
                children: [
                  Positioned(
                    top: 25,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: getHeight(1),
                      width: getWidth(414),
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: 25,
                    child: Container(
                      height: getHeight(80),
                      width: getWidth(1),
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                        },
                        child: DottedBorder(
                          borderType: BorderType.Circle,
                          // radius: const Radius.circular(100),
                          color: Colors.orangeAccent,
                          strokeWidth: 1,
                          child: Container(
                            height: getHeight(50),
                            width: getWidth(50),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: white),
                            child: Center(
                              child: Text(
                                "1",
                                style: kSize18W700ColorWhite.copyWith(
                                    color: Colors.orangeAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                        },
                        child: DottedBorder(
                          borderType: BorderType.Circle,
                          // radius: const Radius.circular(100),
                          color: Colors.orangeAccent,
                          strokeWidth: 1,
                          child: Container(
                            height: getHeight(50),
                            width: getWidth(50),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: white),
                            child: Center(
                              child: Text(
                                "2",
                                style: kSize18W700ColorWhite.copyWith(
                                    color: Colors.orangeAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                        },
                        child: DottedBorder(
                          borderType: BorderType.Circle,
                          // radius: const Radius.circular(100),
                          color: Colors.orangeAccent,
                          strokeWidth: 1,
                          child: Container(
                            height: getHeight(50),
                            width: getWidth(50),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: white),
                            child: Center(
                              child: Text(
                                "3",
                                style: kSize18W700ColorWhite.copyWith(
                                    color: Colors.orangeAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                        },
                        child: DottedBorder(
                          borderType: BorderType.Circle,
                          // radius: const Radius.circular(100),
                          color: Colors.orangeAccent,
                          strokeWidth: 1,
                          child: Container(
                            height: getHeight(50),
                            width: getWidth(50),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: white),
                            child: Center(
                              child: Text(
                                "4",
                                style: kSize18W700ColorWhite.copyWith(
                                    color: Colors.orangeAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 100,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: getHeight(1),
                      width: getWidth(414),
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Positioned(
                    top: 75,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                          },
                          child: DottedBorder(
                            borderType: BorderType.Circle,
                            // radius: const Radius.circular(100),
                            color: Colors.orangeAccent,
                            strokeWidth: 1,
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(50),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: white),
                              child: Center(
                                child: Text(
                                  "8",
                                  style: kSize18W700ColorWhite.copyWith(
                                      color: Colors.orangeAccent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                          },
                          child: DottedBorder(
                            borderType: BorderType.Circle,
                            // radius: const Radius.circular(100),
                            color: Colors.orangeAccent,
                            strokeWidth: 1,
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(50),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: white),
                              child: Center(
                                child: Text(
                                  "7",
                                  style: kSize18W700ColorWhite.copyWith(
                                      color: Colors.orangeAccent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                          },
                          child: DottedBorder(
                            borderType: BorderType.Circle,
                            // radius: const Radius.circular(100),
                            color: Colors.orangeAccent,
                            strokeWidth: 1,
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(50),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: white),
                              child: Center(
                                child: Text(
                                  "6",
                                  style: kSize18W700ColorWhite.copyWith(
                                      color: Colors.orangeAccent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                          },
                          child: DottedBorder(
                            borderType: BorderType.Circle,
                            // radius: const Radius.circular(100),
                            color: Colors.orangeAccent,
                            strokeWidth: 1,
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(50),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: white),
                              child: Center(
                                child: Text(
                                  "5",
                                  style: kSize18W700ColorWhite.copyWith(
                                      color: Colors.orangeAccent),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Center(
                child: Text(
              "Week-2",
              style: kSize22ColorBlack,
            )),
            SizedBox(
              height: getHeight(20),
            ),
            Container(
              height: getHeight(150),
              width: getWidth(414),
              decoration: const BoxDecoration(
                // color: red
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 25,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: getHeight(1),
                      width: getWidth(414),
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: 25,
                    child: Container(
                      height: getHeight(80),
                      width: getWidth(1),
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                        },
                        child: DottedBorder(
                          borderType: BorderType.Circle,
                          // radius: const Radius.circular(100),
                          color: Colors.orangeAccent,
                          strokeWidth: 1,
                          child: Container(
                            height: getHeight(50),
                            width: getWidth(50),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: white),
                            child: Center(
                              child: Text(
                                "1",
                                style: kSize18W700ColorWhite.copyWith(
                                    color: Colors.orangeAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                        },
                        child: DottedBorder(
                          borderType: BorderType.Circle,
                          // radius: const Radius.circular(100),
                          color: Colors.orangeAccent,
                          strokeWidth: 1,
                          child: Container(
                            height: getHeight(50),
                            width: getWidth(50),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: white),
                            child: Center(
                              child: Text(
                                "2",
                                style: kSize18W700ColorWhite.copyWith(
                                    color: Colors.orangeAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                        },
                        child: DottedBorder(
                          borderType: BorderType.Circle,
                          // radius: const Radius.circular(100),
                          color: Colors.orangeAccent,
                          strokeWidth: 1,
                          child: Container(
                            height: getHeight(50),
                            width: getWidth(50),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: white),
                            child: Center(
                              child: Text(
                                "3",
                                style: kSize18W700ColorWhite.copyWith(
                                    color: Colors.orangeAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                        },
                        child: DottedBorder(
                          borderType: BorderType.Circle,
                          // radius: const Radius.circular(100),
                          color: Colors.orangeAccent,
                          strokeWidth: 1,
                          child: Container(
                            height: getHeight(50),
                            width: getWidth(50),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: white),
                            child: Center(
                              child: Text(
                                "4",
                                style: kSize18W700ColorWhite.copyWith(
                                    color: Colors.orangeAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 100,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: getHeight(1),
                      width: getWidth(414),
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Positioned(
                    top: 75,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                          },
                          child: DottedBorder(
                            borderType: BorderType.Circle,
                            // radius: const Radius.circular(100),
                            color: Colors.orangeAccent,
                            strokeWidth: 1,
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(50),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: white),
                              child: Center(
                                child: Text(
                                  "8",
                                  style: kSize18W700ColorWhite.copyWith(
                                      color: Colors.orangeAccent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                          },
                          child: DottedBorder(
                            borderType: BorderType.Circle,
                            // radius: const Radius.circular(100),
                            color: Colors.orangeAccent,
                            strokeWidth: 1,
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(50),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: white),
                              child: Center(
                                child: Text(
                                  "7",
                                  style: kSize18W700ColorWhite.copyWith(
                                      color: Colors.orangeAccent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                          },
                          child: DottedBorder(
                            borderType: BorderType.Circle,
                            // radius: const Radius.circular(100),
                            color: Colors.orangeAccent,
                            strokeWidth: 1,
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(50),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: white),
                              child: Center(
                                child: Text(
                                  "6",
                                  style: kSize18W700ColorWhite.copyWith(
                                      color: Colors.orangeAccent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>const AllExerciseScreen(),transition: Transition.rightToLeft);
                          },
                          child: DottedBorder(
                            borderType: BorderType.Circle,
                            // radius: const Radius.circular(100),
                            color: Colors.orangeAccent,
                            strokeWidth: 1,
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(50),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: white),
                              child: Center(
                                child: Text(
                                  "5",
                                  style: kSize18W700ColorWhite.copyWith(
                                      color: Colors.orangeAccent),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: (){
                // Get.to(()=>WorkoutTrackScreen(),transition: Transition.rightToLeft);
              },
              child: Center(
                child: Container(
                  height: getHeight(60),
                  width: getWidth(374),
                  decoration: BoxDecoration(
                      color: black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text("Reset All Progress",style:kSize18W600ColorBlack.copyWith(color: white,),),),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(20),
            ),
          ],
        ),
      ),
    );
  }
}
