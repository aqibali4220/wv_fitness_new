import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/utils/text_styles.dart';
import 'package:wv_fitness_new/view/exercise/view/exercise_gif_screen.dart';

import '../../../utils/colors.dart';

class AllExerciseScreen extends StatelessWidget {
  const AllExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/exercise_2.png"),
            SizedBox(
              height: getHeight(12),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "Exercises",
                style: kSize22ColorBlack,
              ),
            ),
            SizedBox(
              height: getHeight(550),
              width: getWidth(414),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                itemCount: 7,
                separatorBuilder: (context, index) => Column(
                  children: [
                    SizedBox(
                      height: getHeight(4),
                    ),
                    Divider(
                      thickness: 1,
                      color: black.withOpacity(0.4),
                    ),
                    SizedBox(
                      height: getHeight(4),
                    )
                  ],
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Get.to(() => ExerciseScreen(),
                        transition: Transition.rightToLeft);
                  },
                  child: SizedBox(
                    height: getHeight(100),
                    width: getHeight(414),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/exercise_3.png"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Squats",
                              style: kSize12ColorWhite.copyWith(
                                  color: black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                            Text(
                              "3 Sets - 20 Reps",
                              style: kSize12ColorWhite.copyWith(
                                  color: black, fontSize: 16),
                            ),
                            Text(
                              "15 min workout",
                              style: kSize12ColorWhite.copyWith(
                                  color: black, fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
                          width: getWidth(30),
                        ),
                        index == 3 || index == 5 || index == 7
                            ? Icon(
                                Icons.done_all,
                                size: 25,
                                color: Colors.orangeAccent,
                              )
                            : Text("")
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
