import 'package:flutter/material.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/community_board/controller/community_board_screen.dart';
import 'package:wv_fitness_new/view/community_board/view/inner_member_challenge_screen.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../home/utils/bottom_nav_bar.dart';
import '../../home/view/notification_screen.dart';

class MemberChallengeScreen extends StatelessWidget {
  MemberChallengeScreen({super.key});

  CommunityBoardController communityBoardController = Get.find();
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
          itemCount: 7,
          separatorBuilder: (context, index) => SizedBox(
            height: getHeight(2),
          ),
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Get.to(() => InnerMemberScreen(
                    image:
                        communityBoardController.memberChallengeList[index]));
              },
              child: Container(
                height: getHeight(250),
                width: getWidth(414),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(communityBoardController
                            .memberChallengeList[index]),
                        fit: BoxFit.cover)),

                // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
              )),
        ),
      ),
    );
  }
}
