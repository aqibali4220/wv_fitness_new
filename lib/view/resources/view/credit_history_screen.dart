import 'package:flutter/material.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/resources/controller/credit_controller.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../home/utils/bottom_nav_bar.dart';
import '../../home/view/home_screen.dart';
import '../../home/view/notification_screen.dart';


class CreditHistoryScreen extends StatelessWidget {

  String ? appBar;
   CreditHistoryScreen({super.key,required this.appBar});

   CreditController creditController=Get.find();
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
        title: Text(appBar.toString().toUpperCase().toString()),
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
      body: Column(
        children: [
          SizedBox(height: getHeight(12),),
          Align(
            alignment: Alignment.centerRight,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Container(
                    height: getHeight(75),
                    width: getWidth(130),
                    padding: EdgeInsets.symmetric(horizontal: getWidth(16)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sort",
                          style: kSize18W600ColorBlack,
                        ),
                        DropdownButton<String>(
                          value: creditController.sortValue,
                          items: <String>[
                            'Newest',
                            'Lowest',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: kSize16W400ColorBlack,
                              ),
                            );
                          }).toList(),
                          underline: SizedBox(),
                          borderRadius: BorderRadius.circular(5),
                          isExpanded: true,
                          style: kSize16W400ColorBlack,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            size: getHeight(24),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              creditController.sortValue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                  );
                }),
          ),
          // SizedBox(height: getHeight(12),),
          Divider(thickness: 0.5,color: black.withOpacity(0.4),),
        ],
      ),
    );
  }
}
