import 'package:flutter/material.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/utils/text_styles.dart';
import 'package:wv_fitness_new/view/auth/auth_screens/view/login_screen.dart';
import 'package:wv_fitness_new/view/home/controller/home_controller.dart';
import 'package:wv_fitness_new/view/home/view/chat_with_fitpro_screen.dart';
import 'package:wv_fitness_new/view/home/view/referal_screen.dart';
import 'package:wv_fitness_new/view/home/view/trainers_screen.dart';
import 'package:wv_fitness_new/view/resources/view/edit_profile_screen.dart';
import 'package:wv_fitness_new/view/resources/view/my_account_screen.dart';
import 'package:wv_fitness_new/view/resources/view/my_booking_screen.dart';

import '../../../utils/colors.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({super.key});

  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: black,
      body: Column(
        children: [
          SizedBox(
            height: getHeight(40),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 30),
            child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(Icons.cancel_outlined, color: white))),
          ),
          SizedBox(
            height: getHeight(10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Container(
                  height: getHeight(100),
                  width: getWidth(100),
                  decoration:
                      const BoxDecoration(shape: BoxShape.circle, color: red),
                ),
                SizedBox(
                  width: getWidth(20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Aqib Ali",
                      style: kSize16ColorWhite,
                    ),
                    SizedBox(
                      height: getHeight(8),
                    ),
                    const Text(
                      "aqib@gmail.com",
                      style: kSize16ColorWhite,
                    ),
                    SizedBox(
                      height: getHeight(8),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.person_pin,
                          color: white,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>EditProfileScreen(),transition: Transition.rightToLeft);
                          },
                          child: const Text(
                            "edit profile",
                            style: kSize16ColorWhite,
                          ),
                        ),
                        SizedBox(
                          width: getWidth(8),
                        ),
                        Container(
                          height: getHeight(20),
                          width: getWidth(1),
                          decoration: const BoxDecoration(color: greyFont),
                        ),
                        SizedBox(
                          width: getWidth(8),
                        ),
                        const Icon(
                          Icons.logout,
                          color: white,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.offAll(()=>LoginScreen(),transition: Transition.rightToLeft);
                          },
                          child: const Text(
                            "logout",
                            style: kSize16ColorWhite,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: getHeight(20),
          ),
          SizedBox(
            height: getHeight(660),
            width: getWidth(414),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: homeController.drawerText.length,
              separatorBuilder: (context, index) => Column(
                children: [
                  SizedBox(height: getHeight(8),),
                  const Divider(
                    color: white,
                    thickness: 0.5,
                  ),
                  SizedBox(height: getHeight(8),),

                ],
              ),
              itemBuilder: (context, index) =>
                  textWidget(text: homeController.drawerText[index],OnTap: (){
                    if(homeController.drawerText[index]=="drawer5"){
                      Get.to(()=>MyAccountScreen(),transition: Transition.rightToLeft);
                    }
                    else if(homeController.drawerText[index]=="drawer6"){
                      Get.to(()=>ChatWithFitProScreen(),transition: Transition.rightToLeft);
                    }
                    else if(homeController.drawerText[index]=="drawer8"){
                      Get.to(()=>TrainersScreen(),transition: Transition.rightToLeft);

                    } else if(homeController.drawerText[index]=="drawer7"){
                      Get.to(()=>MyBookingScreen(),transition: Transition.rightToLeft);

                    }else if(homeController.drawerText[index]=="drawer1"){
                      Get.to(()=>ReferalScreen(),transition: Transition.rightToLeft);

                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }

  textWidget({String? text, Function() ? OnTap}) {
    return GestureDetector(
      onTap: OnTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          "$text".tr,
          style: kSize16ColorWhite,
        ),
      ),
    );
  }
}
