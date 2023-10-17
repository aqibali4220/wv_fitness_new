import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/exercise/view/workout_track_screen.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../home/view/notification_screen.dart';

class ExerciseExplainScreen extends StatelessWidget {
  const ExerciseExplainScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: getHeight(40),
            // ),
            Container(
              height: getHeight(500),
              width: getWidth(414),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/exercise_1.png"),
                    fit: BoxFit.cover),
              ),
              // padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "3 Month From Fat to Fit",
                    style: kSize32W700ColorBlack.copyWith(color: white),
                  ),
                  SizedBox(
                    height: getHeight(12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "7 days / Week",
                        style: kSize12ColorWhite,
                      ),
                      Container(
                        height: getHeight(20),
                        width: getWidth(1),
                        color: white,
                      ),
                      const Text(
                        "Cutting",
                        style: kSize12ColorWhite,
                      ),
                      Container(
                        height: getHeight(20),
                        width: getWidth(1),
                        color: white,
                      ),
                      const Text(
                        "Advanced",
                        style: kSize12ColorWhite,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getHeight(12),
                  ),
                  LinearPercentIndicator(
                    barRadius: const Radius.circular(20),
                    lineHeight: 20.0,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    width: getWidth(414),
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
                ],
              ),
            ),
            SizedBox(
              height: getHeight(12),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "What this plan actually does?",
                style: kSize18W600ColorBlack,
              ),
            ),
            SizedBox(
              height: getHeight(12),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "This is an advanced cutting routine designed to help individuals increase their heart rate, workout intensity and metabolic rate to stimulate fat loss and getting lean.In this routine you will be working out 6 to 7 days a week for optimal fat loss and muscle growth.This routine will be performed for 3 months, as this is optimal time to confuse your body into this new exercise program and trigger fat loss/muscle growth and strength.There is a mix of bodyweight, dumbbell, weighted and core exercises used in this routine to work and build the muscles.Each day of the routine will focus on a major body part, a mixture of various core exercises and cardio to help the burn calories and excess fat storage in the body",
                style: kSize12ColorWhite.copyWith(
                  fontSize: 14,
                  color: black,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(12),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const WorkoutTrackScreen(),
                    transition: Transition.rightToLeft);
              },
              child: Center(
                child: Container(
                  height: getHeight(60),
                  width: getWidth(374),
                  decoration: BoxDecoration(
                      color: black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      "Start Workout",
                      style: kSize18W600ColorBlack.copyWith(
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(40),
            ),
          ],
        ),
      ),
    );
  }
}
