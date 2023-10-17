import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wv_fitness_new/utils/images.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/home/controller/trainer_controller.dart';
import 'package:wv_fitness_new/view/home/view/session_details_screen.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../utils/bottom_nav_bar.dart';
import 'home_screen.dart';
import 'notification_screen.dart';

class TrainerExplainationScreen extends StatelessWidget {
  TrainerExplainationScreen({super.key, required this.trainerName});

  String trainerName;

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
        title: Text(trainerName.toString().toUpperCase().toString()),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    trainerName,
                    style: kSize32W700ColorBlack.copyWith(
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: getHeight(50),
                    width: getWidth(170),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orangeAccent),
                    child: const Center(
                      child: Text(
                        "Free Consultation",
                        style: kSize18W700ColorWhite,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(6),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: black.withOpacity(0.2),
              ),
              SizedBox(
                height: getHeight(12),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getWidth(12),
                  ),
                  Container(
                    height: getHeight(50),
                    width: getWidth(50),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurpleAccent,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.facebook,
                        color: white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(30),
                  ),
                  Container(
                    height: getHeight(50),
                    width: getWidth(50),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pinkAccent,
                    ),
                    child: const Center(
                      child: Icon(Icons.facebook),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(25),
              ),
              Text(
                "Biography",
                style: kSize16W400ColorBlack.copyWith(
                    color: black.withOpacity(0.6)),
              ),
              SizedBox(
                height: getHeight(12),
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
                style: kSize18W600ColorBlack,
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Text(
                "Available Session(s)",
                style:
                    kSize32W700ColorBlack.copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              SizedBox(
                height: getHeight(500),
                width: getWidth(414),
                child: ListView.separated(
                  padding: const EdgeInsets.only(right: 8),
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  separatorBuilder: (context, index) => SizedBox(
                    height: getHeight(8),
                  ),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      Get.to(()=>SessionDetailsScreen(trainerName: trainerName,),transition: Transition.rightToLeft);
                    },
                    child: Container(
                      height: getHeight(350),
                      width: getWidth(374),
                      decoration: BoxDecoration(
                          color: black.withOpacity(0.4),
                          image: const DecorationImage(
                            image: AssetImage(app_logo),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getHeight(50),
                            width: getWidth(414),
                            decoration:
                                BoxDecoration(color: black.withOpacity(0.6)),
                            child: Center(
                              child: Text(
                                "1 Session",
                                style: kSize22ColorBlack.copyWith(color: white),
                              ),
                            ),
                          ),
                          SizedBox(height: getHeight(12),),
                          Container(
                            height: getHeight(60),
                            width: getWidth(170),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.orangeAccent
                            ),
                            child: Center(child: Text("View Details",style: kSize22ColorBlack.copyWith(color: white,fontWeight: FontWeight.w400),),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
