import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/home/controller/chat_controller.dart';
import 'package:wv_fitness_new/view/home/view/trainers_screen.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../../utils/size_config.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/custom_textfield.dart';
import '../utils/bottom_nav_bar.dart';
import 'home_screen.dart';
import 'notification_screen.dart';

class ChatWithFitProScreen extends StatelessWidget {
  ChatWithFitProScreen({super.key});

  ChatController chatController = Get.find();
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
            Get.off(() => HomeScreen(), transition: Transition.noTransition);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.arrow_back),
          ),
        ),
        centerTitle: true,
        title: Text("chat1".tr.toString().toUpperCase().toString()),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: getHeight(10),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>TrainersScreen(),transition: Transition.noTransition);
              },
              child: Container(
                height: getHeight(60),
                width: getWidth(414),
                decoration: BoxDecoration(
                    color: black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "chat2".tr,
                    style: kSize18W700ColorWhite,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GetBuilder<ChatController>(builder: (context) {
                  return CustomTextField(
                    icon: const Icon(Icons.search),
                    backgroundColor: black.withOpacity(0.1),
                    height: getHeight(55),
                    width: getWidth(250),
                    text: "Search",
                    length: 30,
                    controller: chatController.searchController,
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode:
                        chatController.searchController.text.isNotEmpty
                            ? AutovalidateMode.onUserInteraction
                            : AutovalidateMode.disabled,
                    onChanged: (value) {
                      chatController.update();
                    },
                    inputFormatters:
                        FilteringTextInputFormatter.singleLineFormatter,
                  );
                }),
                StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return Container(
                    height: getHeight(82),
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
                          value: chatController.sortValue,
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
                              chatController.sortValue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
            Divider(
              color: greyFont,
              thickness: 0.5,
            ),
            SizedBox(
              height: getHeight(15),
            ),
          ],
        ),
      ),
    );
  }
}
