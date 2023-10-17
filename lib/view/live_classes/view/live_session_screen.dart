import 'package:flutter/material.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/view/live_classes/controller/live_session_controller.dart';

import '../../../utils/colors.dart';
import 'package:get/get.dart';

import '../../../utils/text_styles.dart';
import '../../home/utils/bottom_nav_bar.dart';
import '../../home/view/notification_screen.dart';

class LiveClassesScreen extends StatelessWidget {
   LiveClassesScreen({super.key});

   LiveSessionController liveSessionController=Get.find();
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
          itemCount: liveSessionController.liveText.length,
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
                      AssetImage(liveSessionController.liveImg[index]),
                      fit: BoxFit.cover),),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "${liveSessionController.liveText[index]}".toString().capitalize.toString(),
                        style: kSize32W700ColorBlack.copyWith(color: white,fontSize: 62,fontWeight: FontWeight.w600),

                      ),
                    ),
                    Text(
                      "${liveSessionController.liveSubText[index]}".toString().capitalize.toString(),
                      style: kSize32W700ColorBlack.copyWith(color: white,fontSize: 32,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,

                    ),
                  ],
                ),

                // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
              )),
        ),
      ),
    );
  }
}






