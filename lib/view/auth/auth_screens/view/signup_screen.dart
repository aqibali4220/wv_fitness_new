import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/images.dart';
import '../../../../utils/size_config.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_password_textfeild.dart';
import '../../../../widgets/custom_textfield.dart';
import '../controller/auth_controller.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  AuthController authController = Get.find();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(

        backgroundColor: black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                      child: Icon(Icons.arrow_back,size: getHeight(30),color: white,)),
                  SizedBox(width: getWidth(50),),
                  Image.asset(app_logo,height: getHeight(200),width: getWidth(200),),
                ],
              ),
              SizedBox(height: getHeight(30),),
              GetBuilder<AuthController>(builder: (context) {
                return CustomTextField(
                  icon: const Icon( Icons.title),
                  backgroundColor: white,
                  height: getHeight(55),
                  text: "First Name",
                  length: 30,
                  controller: authController.firstNameController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode:
                      authController.firstNameController.text.isNotEmpty
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
                return CustomTextField(
                  icon: const Icon( Icons.title),
                  backgroundColor: white,
                  height: getHeight(55),
                  text: "Last Name",
                  length: 30,
                  controller: authController.lastNameController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode:
                      authController.lastNameController.text.isNotEmpty
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
                return CustomTextField(
                  icon: const Icon(Icons.email_outlined),
                  backgroundColor: white,
                  height: getHeight(55),
                  text: "Email",
                  length: 30,
                  controller: authController.signupEmailController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode:
                      authController.signupEmailController.text.isNotEmpty
                          ? AutovalidateMode.onUserInteraction
                          : AutovalidateMode.disabled,
                  onChanged: (value) {
                    authController.update();
                  },
                  inputFormatters:
                      FilteringTextInputFormatter.singleLineFormatter,
                );
              }), SizedBox(
                height: getHeight(12),
              ),
              GetBuilder<AuthController>(builder: (context) {
                return CustomTextField(
                  icon: const Icon(Icons.person),
                  backgroundColor: white,
                  height: getHeight(55),
                  text: "User Name",
                  length: 30,
                  controller: authController.signupEmailController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode:
                      authController.signupEmailController.text.isNotEmpty
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
                  text: "Enter Password",
                  obscureText: true,
                  sufficon: 1,
                  length: 30,
                  controller: authController.signupPasswordController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode:
                  authController.signupPasswordController.text.isNotEmpty
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
                height: getHeight(12),
              ),
              GetBuilder<AuthController>(builder: (context) {
                return CustomPasswordTextField(
                  icon: const Icon(Icons.lock),
                  backgroundColor: white,
                  height: getHeight(55),
                  text: "Re Enter Password",
                  obscureText: true,
                  sufficon: 1,
                  length: 30,
                  controller: authController.signupRePasswordController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode:
                  authController.signupRePasswordController.text.isNotEmpty
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
                height: getHeight(12),
              ),
              CustomButton(
                  height: 60,
                  width: 374,
                  ontap: () {},
                  buttonColor: buttonColor,
                  text: "log7"),

            ],
          ),
        ),
      ),
    );
  }
}
