import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{


  ///login controller
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  ///signup controllers
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController signupEmailController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();
  TextEditingController signupRePasswordController = TextEditingController();


  bool switchValue=false;


}