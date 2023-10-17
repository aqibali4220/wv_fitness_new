import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/utils/text_styles.dart';

import '../../../utils/colors.dart';

class ExerciseScreen extends StatelessWidget {
  ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: black.withOpacity(0.5),
              size: 25,
            )),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_sharp,
                size: 25,
                color: Colors.orangeAccent,
              ),
              SizedBox(
                width: getWidth(12),
              ),
              Text(
                "Show Video",
                style:
                    kSize18W700ColorWhite.copyWith(color: Colors.orangeAccent),
              ),
              SizedBox(
                width: getWidth(12),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Image.asset(
            "assets/images/exercise_4.png",
            height: getHeight(250),
            fit: BoxFit.cover,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Benchpress Dumbbell Pushpups",
                  style: kSize18W600ColorBlack,
                ),
                SizedBox(
                  height: getHeight(12),
                ),
                SizedBox(
                  height: getHeight(100),
                  width: getWidth(414),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "No of Sets:",
                            style: kSize12ColorWhite.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: black),
                          ),
                          Text(
                            "No of Reps:",
                            style: kSize12ColorWhite.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: black),
                          ),
                          Text(
                            "Workout Time:",
                            style: kSize12ColorWhite.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: black),
                          ),
                          Text(
                            "Target Muscle:",
                            style: kSize12ColorWhite.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: black),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: getWidth(20),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "3 Sets",
                            style: kSize12ColorWhite.copyWith(
                                fontSize: 14, color: black),
                          ),
                          Text(
                            "20 Reps",
                            style: kSize12ColorWhite.copyWith(
                                fontSize: 14, color: black),
                          ),
                          Text(
                            "15 min workout",
                            style: kSize12ColorWhite.copyWith(
                                fontSize: 14, color: black),
                          ),
                          Text(
                            "Cardio",
                            style: kSize12ColorWhite.copyWith(
                                fontSize: 14, color: black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getHeight(12),
                ),
                const Text(
                  "How to perform?",
                  style: kSize22ColorBlack,
                ),
                SizedBox(
                  height: getHeight(12),
                ),
                Text(
                  "The elliptical is a stationary exercise machine used to simulate walking, running or stair climbing. You are able to burn a significant amount of calories, tone up, increase endurance and strength and build power calf and abdominal muscles through the use of an elliptical",
                  style: kSize16W500ColorBlack,
                ),
                SizedBox(
                  height: getHeight(12),
                ),
                Divider(thickness: 1,color: black.withOpacity(0.4),),
                SizedBox(
                  height: getHeight(12),
                ),
                Row(
                  children: [
                    Text("Next Exercise:",style: kSize16W500ColorBlack,),
                    SizedBox(width: getWidth(12),),
                    Text("Machine Press",style: kSize16W500ColorBlack.copyWith(color: Colors.orangeAccent),)
                  ],
                ),
                SizedBox(
                  height: getHeight(12),
                ),
                Divider(thickness: 1,color: black.withOpacity(0.4),),
                SizedBox(
                  height: getHeight(12),
                ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
