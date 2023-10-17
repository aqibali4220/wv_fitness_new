import 'package:flutter/material.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/community_board/controller/community_board_screen.dart';
import 'package:wv_fitness_new/view/community_board/view/inner_member_challenge_screen.dart';
import 'package:wv_fitness_new/view/locker/controller/locker_controller.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../home/utils/bottom_nav_bar.dart';
import '../../home/view/notification_screen.dart';

class LockerScreen extends StatelessWidget {
  LockerScreen({super.key});

  LockerController lockerController = Get.find();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
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
      body: SizedBox(
        height: getHeight(896),
        width: getWidth(414),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemCount: lockerController.lockerImgList.length,
          separatorBuilder: (context, index) => SizedBox(
            height: getHeight(2),
          ),
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {},
              child: Container(
                height: getHeight(250),
                width: getWidth(414),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage(lockerController.lockerImgList[index]),
                        fit: BoxFit.cover),),
                child: Center(
                  child: Text(
                    "${lockerController.lockerTextList[index]}".toString().capitalize.toString(),
                    style: kSize32W700ColorBlack.copyWith(color: white),
                  ),
                ),

                // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
              )),
        ),
      ),
    );
  }
}
