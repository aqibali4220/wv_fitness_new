import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wv_fitness_new/utils/images.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/utils/text_styles.dart';
import 'package:wv_fitness_new/view/home/controller/home_controller.dart';
import 'package:wv_fitness_new/view/home/view/chat_with_fitpro_screen.dart';
import 'package:wv_fitness_new/view/home/view/check_in_screen.dart';
import 'package:wv_fitness_new/view/home/view/referal_screen.dart';

import '../../../utils/colors.dart';
import 'drawer_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(70),
      width: getWidth(Get.width),
      decoration: const BoxDecoration(color: black),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconBottom(
              icon: const Icon(
                Icons.menu,
                color: white,
              ),
              text: "bottom1",
              onTap: () {
                Get.to(()=>DrawerScreen(),transition: Transition.noTransition);
              },
            ),
            iconBottom(
                icon: const Icon(
                  Icons.messenger_outline,
                  color: white,
                ),
                text: "bottom5",
                onTap: () {
                  Get.to(()=>ChatWithFitProScreen(),transition: Transition.noTransition);

                }),

            iconBottom(
                icon: const Icon(
                  Icons.check_circle_outlined,
                  color: white,
                ),
                text: "bottom2",
                onTap: () {
                  Get.off(()=>CheckInScreen(),transition: Transition.noTransition);
                }),
            iconBottom(
                icon: const Icon(
                  Icons.location_on_sharp,
                  color: white,
                ),
                text: "bottom3",
                onTap: () {
                  Get.off(()=>ReferalScreen(),transition: Transition.noTransition);

                }),
            iconBottom(
                icon: const Icon(
                  Icons.equalizer,
                  color: white,
                ),
                text: "bottom4",
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}

class imageBottom extends StatelessWidget {
  const imageBottom({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });

  final String image;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: getHeight(40),
            color: white,
          ),
          Text(
            text.tr,
            style: kSize16ColorWhite,
          ),
        ],
      ),
    );
  }
}

class iconBottom extends StatelessWidget {
  const iconBottom({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final Icon icon;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Text(
            text.tr,
            style: kSize12ColorWhite,
          ),
        ],
      ),
    );
  }
}
