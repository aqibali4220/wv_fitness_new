import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/resources/view/credit_history_screen.dart';
import 'package:wv_fitness_new/view/resources/view/purchase_plan_screen.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../../utils/size_config.dart';
import '../../../utils/text_styles.dart';
import '../../home/utils/bottom_nav_bar.dart';
import '../../home/view/home_screen.dart';
import '../../home/view/notification_screen.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

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
        title: Text("My Account".toString().toUpperCase().toString()),
        actions: [

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getHeight(250),
            width: getWidth(414),
            decoration: BoxDecoration(
              color: black.withOpacity(0.4)
            ),
            child: Image.asset(app_logo),
          ),
          SizedBox(height: getHeight(15),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Aqib Ali",style: kSize32W700ColorBlack.copyWith(fontWeight: FontWeight.w500),),
                    Text("0",style: kSize32W700ColorBlack.copyWith(fontWeight: FontWeight.w500),),
                  ],
                ),
                SizedBox(height: getHeight(15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("aqib@gmail.com",style: kSize22ColorBlack.copyWith(fontWeight: FontWeight.w500),),
                    Text("Credits",style: kSize22ColorBlack.copyWith(fontWeight: FontWeight.w500),),
                  ],
                ),
                SizedBox(height: getHeight(8),),
                Divider(thickness: 0.5,color: black.withOpacity(0.4),),
                SizedBox(height: getHeight(8),),
                GestureDetector(
                    onTap: (){
                      Get.to(()=>PurchasePlanScreen(),transition: Transition.rightToLeft);
                    },
                    child: Text("Purchase Credits",style: kSize22ColorBlack.copyWith(fontWeight: FontWeight.w500),)),
                SizedBox(height: getHeight(8),),
                Divider(thickness: 0.5,color: black.withOpacity(0.4),),
                SizedBox(height: getHeight(8),),
                GestureDetector(
                    onTap: (){
                      Get.to(()=>CreditHistoryScreen(appBar: 'Purchased Credits',),transition: Transition.rightToLeft);
                    },
                    child: Text("Credits Purchase History",style: kSize22ColorBlack.copyWith(fontWeight: FontWeight.w500),)),
                SizedBox(height: getHeight(8),),
                Divider(thickness: 0.5,color: black.withOpacity(0.4),),
                SizedBox(height: getHeight(8),),
                GestureDetector(
                    onTap: (){
                      Get.to(()=>CreditHistoryScreen(appBar: 'Used Credits',),transition: Transition.rightToLeft);
                    },
                    child: Text("Credits Use History",style: kSize22ColorBlack.copyWith(fontWeight: FontWeight.w500),)),
                SizedBox(height: getHeight(8),),
                Divider(thickness: 0.5,color: black.withOpacity(0.4),),
                SizedBox(height: getHeight(8),),
                Text("My Bookings",style: kSize22ColorBlack.copyWith(fontWeight: FontWeight.w500),),
                SizedBox(height: getHeight(8),),
                Divider(thickness: 0.5,color: black.withOpacity(0.4),),
                SizedBox(height: getHeight(8),),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
