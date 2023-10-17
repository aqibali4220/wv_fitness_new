import 'package:flutter/material.dart';
import 'package:wv_fitness_new/view/community_board/view/member_challenge_screen.dart';
import 'package:wv_fitness_new/view/home/utils/bottom_nav_bar.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../../utils/size_config.dart';
import '../../../utils/text_styles.dart';
import '../../home/view/home_screen.dart';
import '../../home/view/notification_screen.dart';



class CommunityBoardScreen extends StatelessWidget {
  const CommunityBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
      backgroundColor: black,
      elevation: 0,
      titleTextStyle: kSize22ColorWhite,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
      body: Column(
        children: [
          GestureDetector(
              onTap: (){
                Get.to(()=>MemberChallengeScreen(),transition: Transition.noTransition);
              },
              child: Container(
                height: getHeight(250),
                width: getWidth(414),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage("assets/home_images/images17.avif"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Text(
                    "Member Challenges",
                    style: kSize32W700ColorBlack.copyWith(color: white),
                  ),
                ),
                // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
              )
          ),
          GestureDetector(
              onTap: (){},
              child: Container(
                height: getHeight(250),
                width: getWidth(414),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage("assets/home_images/images18.avif"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Text(
                    "Clubs Events",
                    style: kSize32W700ColorBlack.copyWith(color: white),
                  ),
                ),
                // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
              )
          ),
        ],
      ),
    );
  }
}
