import 'package:flutter/material.dart';
import 'package:wv_fitness_new/utils/images.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../home/utils/bottom_nav_bar.dart';
import '../../home/view/notification_screen.dart';

class InnerMemberScreen extends StatelessWidget {
  String image;
  InnerMemberScreen({super.key, required this.image});

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
      body: Column(
        children: [
          Container(
            height: getHeight(250),
            width: getWidth(414),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),

            // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
          ),
          SizedBox(
            height: getHeight(20),

          ),
          Container(
            padding: EdgeInsets.all(8),
            height: getHeight(50),
            width: getWidth(300),
            decoration: BoxDecoration(
              color: Colors.black38
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(pdf_icon),
                SizedBox(width: getWidth(20),),
                Text("Download PDF",style: kSize16ColorWhite.copyWith(fontWeight: FontWeight.w700),),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
