import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/utils/text_styles.dart';
import 'package:wv_fitness_new/view/exercise/view/exercise_list_screen.dart';
import 'package:wv_fitness_new/view/goals/view/goals_screen.dart';
import 'package:wv_fitness_new/view/home/controller/home_controller.dart';
import 'package:wv_fitness_new/view/home/utils/bottom_nav_bar.dart';
import 'package:wv_fitness_new/view/home/utils/drawer_screen.dart';
import 'package:wv_fitness_new/view/home/view/notification_screen.dart';
import 'package:wv_fitness_new/utils/web_view/show_webview_module/show_webview.dart';
import 'package:wv_fitness_new/view/live_classes/view/live_session_screen.dart';
import 'package:wv_fitness_new/view/locker/view/locker_screen.dart';
import 'trainers_screen.dart';
import 'package:wv_fitness_new/view/community_board/view/community_board_screen.dart';
import '../../../utils/colors.dart';
import '../../../utils/images.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: black,
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
        title: Text("home1".tr.toString().toUpperCase().toString()),
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
      body: Column(
        children: [
          SizedBox(
            height: getHeight(700),
            width: getWidth(414),
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemCount: homeController.homeImages.length,
              separatorBuilder: (context, index) => SizedBox(
                height: getHeight(2),
              ),
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Get.log("index page $index");
                    switch (index) {
                      case 0:
                        Get.to(() => ShowWebView(
                              url: homeController.start_here_url,
                            ),transition: Transition.noTransition);
                        break;
                      case 1:
                        Get.to(() => ShowWebView(
                              url: homeController.transformation_program_url,
                            ),transition: Transition.noTransition);
                        break;
                      case 2:
                        Get.to(() => TrainersScreen(),transition: Transition.noTransition);
                        break;
                      case 3:
                        Get.to(() => CommunityBoardScreen(),transition: Transition.noTransition);
                        break;
                      case 4:
                        Get.to(() => GoalsScreen(),transition: Transition.noTransition);
                        break;
                      case 5:
                        Get.to(() => ExerciseListScreen(),transition: Transition.noTransition);
                        break;
                      case 6:
                        Get.to(() => LockerScreen(),transition: Transition.noTransition);
                        break;
                      case 7:
                        Get.to(() => LiveClassesScreen(),transition: Transition.noTransition);
                        break;
                      default:
                        Get.to(() => HomeScreen());
                    }
                  },
                  child: Container(
                    height: getHeight(250),
                    width: getWidth(414),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "${homeController.homeImages[index]}"),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Text(
                        "${homeController.homeText[index]}",
                        style: kSize32W700ColorBlack.copyWith(color: white),
                      ),
                    ),
                    // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
