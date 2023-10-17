import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/utils/colors.dart';
import 'package:wv_fitness_new/utils/images.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/utils/text_styles.dart';
import 'package:wv_fitness_new/view/auth/auth_screens/controller/auth_controller.dart';
import 'package:wv_fitness_new/view/auth/auth_screens/view/signup_screen.dart';
import 'package:wv_fitness_new/view/home/view/home_screen.dart';
import 'package:wv_fitness_new/widgets/custom_button.dart';
import 'package:wv_fitness_new/widgets/custom_password_textfeild.dart';
import 'package:wv_fitness_new/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: getHeight(15),),
              Image.asset(app_logo,height: getHeight(250),width: getWidth(250),),
              GetBuilder<AuthController>(builder: (context) {
                return CustomTextField(
                  icon: const Icon(Icons.email_outlined),
                  backgroundColor: white,
                  height: getHeight(55),
                  text: "Email",
                  length: 30,
                  controller: authController.emailController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode:
                      authController.emailController.text.isNotEmpty
                          ? AutovalidateMode.onUserInteraction
                          : AutovalidateMode.disabled,
                  onChanged: (value) {
                    authController.update();
                  },
                  inputFormatters:
                      FilteringTextInputFormatter.singleLineFormatter,
                );
              }),
              SizedBox(
                height: getHeight(12),
              ),
              GetBuilder<AuthController>(builder: (context) {
                return CustomPasswordTextField(
                  icon: const Icon(Icons.lock),
                  backgroundColor: white,
                  height: getHeight(55),
                  text: "********",
                  obscureText: true,
                  sufficon: 1,
                  length: 30,
                  controller: authController.passwordController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode:
                      authController.passwordController.text.isNotEmpty
                          ? AutovalidateMode.onUserInteraction
                          : AutovalidateMode.disabled,
                  onChanged: (value) {
                    authController.update();
                  },
                  inputFormatters:
                      FilteringTextInputFormatter.deny(RegExp('[ ]')),
                );
              }),
              SizedBox(
                height: getHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "log1".tr.toString().toUpperCase().toString(),
                    style: kSize22ColorWhite,
                  ),
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return Switch.adaptive(
                          activeColor: greyFont,
                          inactiveThumbColor: greyFont,
                          inactiveTrackColor: white,
                          value: authController.switchValue,
                          onChanged: (val) {
                            setState(() {
                              if (!authController.switchValue) {
                                authController.switchValue = true;
                              } else {
                                authController.switchValue = false;
                              }
                            });
                          });
                    },
                  )
                ],
              ),
              SizedBox(
                height: getHeight(15),
              ),
              Text(
                "log3".tr.toString().toUpperCase().toString(),
                style: kSize18W700ColorWhite.copyWith(
                    decoration: TextDecoration.underline),
              ),
              SizedBox(
                height: getHeight(15),
              ),
              CustomButton(
                  height: 60,
                  width: 374,
                  ontap: () {
                    Get.to(()=> HomeScreen(),transition: Transition.rightToLeft);
                  },
                  buttonColor: buttonColor,
                  text: "log2"),
              SizedBox(
                height: getHeight(15),
              ),
              CustomButton(
                  height: 60,
                  image: facebook_icon,
                  width: 374,
                  ontap: () {},
                  buttonColor: facebookBlue,
                  imageColor: white,
                  text: "log4"),
              SizedBox(
                height: getHeight(15),
              ),
              CustomButton(
                  height: 60,
                  image: google_icon,
                  width: 374,
                  ontap: () {},
                  buttonColor: googleOrange,
                  imageColor: white,
                  text: "log5"),
              SizedBox(
                height: getHeight(15),
              ),
              GestureDetector(
                onTap: (){
                  Get.to(()=>SignupScreen(),transition: Transition.rightToLeft);
                },
                child: Text(
                  "log6".tr.toString().toUpperCase().toString(),
                  style: kSize18W700ColorWhite,
                ),
              ),
              SizedBox(
                height: getHeight(15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
