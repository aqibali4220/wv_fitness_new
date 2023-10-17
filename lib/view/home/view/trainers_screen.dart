import 'package:flutter/material.dart';
import 'package:wv_fitness_new/utils/images.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/home/controller/trainer_controller.dart';
import 'package:wv_fitness_new/view/home/view/trainer_explanation_screen.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../utils/bottom_nav_bar.dart';
import 'home_screen.dart';
import 'notification_screen.dart';

class TrainersScreen extends StatelessWidget {
   TrainersScreen({super.key});

   TrainerController  trainerController=Get.find();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: white,
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
        centerTitle: true,
        title: Text("tran1".tr.toString().toUpperCase().toString()),
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
          GestureDetector(
            onTap: () {
              Get.off(() => HomeScreen(), transition: Transition.noTransition);
            },
            child: Icon(
              Icons.home,
              size: getHeight(35),
            ),
          ),
          SizedBox(
            width: getWidth(15),
          ),
        ],
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        itemCount: trainerController.trainerImg.length,
        separatorBuilder: (context, index) => SizedBox(
          height: getHeight(15),
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            Get.to(()=>TrainerExplainationScreen(trainerName: trainerController.trainerText[index],),transition: Transition.noTransition);
          },

          child: Container(
            height: getHeight(450),
            width: getWidth(374),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10.0,
                    offset: const Offset(0, 10),
                  ),
                ],
                color: white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                    child: Image.asset(trainerController.trainerImg[index],width: getWidth(374),height: getHeight(380),fit: BoxFit.cover,)),
                SizedBox(height: getHeight(15),),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(trainerController.trainerText[index],style: kSize22ColorBlack,),
                ),
                SizedBox(height: getHeight(15),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
