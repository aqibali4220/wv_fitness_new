import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/utils/images.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../home/utils/bottom_nav_bar.dart';
import '../../home/view/home_screen.dart';
import '../../home/view/notification_screen.dart';

class PurchasePlanScreen extends StatelessWidget {
  PurchasePlanScreen({super.key});

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
        title: Text("Credit Plans".toString().toUpperCase().toString()),
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
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10.0,
                offset: Offset(0, 10),
              ),
            ], color: white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: getHeight(15),),
                Image.asset(gym_icon,height: getHeight(50),width: getWidth(50),color: black.withOpacity(0.6),),
                SizedBox(height: getHeight(8),),
                Text("\$55",style: kSize32W700ColorBlack.copyWith(color: black.withOpacity(0.6)),),
                SizedBox(height: getHeight(8),),
                Text("600 Credits",style: kSize22ColorBlack.copyWith(color: black.withOpacity(0.6)),),
                SizedBox(height: getHeight(8),),
                Text("\$0.100 per credit",style: kSize16W500ColorBlack.copyWith(color: black.withOpacity(0.6)),),

              ],
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
