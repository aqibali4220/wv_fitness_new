import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/view/resources/controller/edit_profile_controller.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/custom_textfield.dart';
import '../../home/view/home_screen.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  EditProfileController editProfileController = Get.find();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: appBackground,
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
          title: Text("Edit Profile".toString().toUpperCase().toString()),
          actions: [
            GestureDetector(
              onTap: () {
                Get.off(() => HomeScreen(),
                    transition: Transition.noTransition);
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
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  height: getHeight(400),
                  width: getWidth(414),
                  decoration: BoxDecoration(color: black.withOpacity(0.5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: getHeight(20),
                      ),
                      Container(
                        height: getHeight(150),
                        width: getWidth(150),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: white.withOpacity(0.4),
                              blurRadius: 10.0,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      Text(
                        "First Name Last Name",
                        style: kSize22ColorBlack.copyWith(color: white),
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      Container(
                        height: getHeight(50),
                        width: getWidth(200),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: white,
                        ),
                        child: Center(
                          child: Text(
                            "Edit / Add Picture",
                            style: kSize22ColorBlack.copyWith(
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      Container(
                        height: getHeight(50),
                        width: getWidth(170),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.do_not_disturb_on_total_silence),
                            Text(
                              "Change Goals",
                              style: kSize22ColorBlack.copyWith(
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // height: getHeight(950),
                  width: getWidth(414),
                  decoration: BoxDecoration(
                    color: white,
                  ),
                  child: GetBuilder<EditProfileController>(builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: getHeight(20),
                          ),
                          Container(
                            height: getHeight(90),
                            width: getWidth(350),
                            decoration:
                                BoxDecoration(color: black.withOpacity(0.6)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, bottom: 10),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text("Form",
                                      style: kSize32W700ColorBlack.copyWith(
                                          color: white))),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(45),
                          ),
                          Text(
                            "First Name".tr,
                            style: kSize18W600ColorBlack.copyWith(
                                color: black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller:
                                  editProfileController.firstNameController,
                              text: "First Name",
                              length: 50,
                              keyboardType: TextInputType.emailAddress,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Text(
                            "Last Name".tr,
                            style: kSize18W600ColorBlack.copyWith(
                                color: black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller:
                                  editProfileController.lastNameController,
                              text: "Last Name",
                              length: 50,
                              keyboardType: TextInputType.emailAddress,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Text(
                            "Email".tr,
                            style: kSize18W600ColorBlack.copyWith(
                                color: black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller: editProfileController.emailController,
                              text: "Email",
                              length: 50,
                              keyboardType: TextInputType.emailAddress,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(15),
                          ),
                          Row(
                            children: [
                              Text(
                                "Phone #".tr,
                                style: kSize18W600ColorBlack.copyWith(
                                    color: black.withOpacity(0.4)),
                              ),
                              SizedBox(
                                width: getWidth(8),
                              ),
                              Text(
                                "(Optional)".tr,
                                style: kSize16W500ColorBlack.copyWith(
                                    color: black.withOpacity(0.6)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller: editProfileController.phoneController,
                              text: "031234567",
                              length: 50,
                              keyboardType: TextInputType.number,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Text(
                            "Address".tr,
                            style: kSize18W600ColorBlack.copyWith(
                                color: black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller:
                                  editProfileController.addressController,
                              text: "Address",
                              length: 50,
                              keyboardType: TextInputType.number,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Text(
                            "City".tr,
                            style: kSize18W600ColorBlack.copyWith(
                                color: black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller: editProfileController.cityController,
                              text: "City",
                              length: 50,
                              keyboardType: TextInputType.number,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Text(
                            "State".tr,
                            style: kSize18W600ColorBlack.copyWith(
                                color: black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller: editProfileController.stateController,
                              text: "State",
                              length: 50,
                              keyboardType: TextInputType.number,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Text(
                            "Country".tr,
                            style: kSize18W600ColorBlack.copyWith(
                                color: black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller:
                                  editProfileController.countryController,
                              text: "Country",
                              length: 50,
                              keyboardType: TextInputType.number,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Text(
                            "Zip Code".tr,
                            style: kSize18W600ColorBlack.copyWith(
                                color: black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller: editProfileController.zipController,
                              text: "Zip Code",
                              length: 50,
                              keyboardType: TextInputType.number,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Container(
                            height: getHeight(60),
                            width: getWidth(120),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: black),
                            child: Center(
                              child: Text(
                                "Update",
                                style: kSize22ColorBlack.copyWith(
                                    color: white, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Container(
                            height: getHeight(90),
                            width: getWidth(350),
                            decoration:
                                BoxDecoration(color: black.withOpacity(0.6)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, bottom: 10),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                      "Change your password"
                                          .toString()
                                          .capitalize
                                          .toString(),
                                      style: kSize32W700ColorBlack.copyWith(
                                          color: white))),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Text(
                            "New Password".tr,
                            style: kSize18W600ColorBlack.copyWith(
                                color: black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller:
                                  editProfileController.newPasswordController,
                              text: "New Password",
                              length: 50,
                              keyboardType: TextInputType.number,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Text(
                            "Confirm Password".tr,
                            style: kSize18W600ColorBlack.copyWith(
                                color: black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          CustomTextField(
                              height: getHeight(60),
                              // Readonly: true,
                              controller: editProfileController
                                  .confirmPasswordController,
                              text: "Confirm Password",
                              length: 50,
                              keyboardType: TextInputType.number,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter),
                          SizedBox(
                            height: getHeight(12),
                          ),
                          Container(
                            height: getHeight(60),
                            width: getWidth(120),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: black.withOpacity(0.3)),
                            child: Center(
                              child: Text(
                                "Save",
                                style: kSize22ColorBlack.copyWith(
                                    color: white, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(20),
                          ),
                          Container(
                            height: getHeight(60),
                            width: getWidth(200),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: red),
                            child: Center(
                              child: Text(
                                "Delete Account",
                                style: kSize22ColorBlack.copyWith(
                                    color: white, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(20),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
