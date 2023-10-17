import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wv_fitness_new/utils/size_config.dart';
import 'package:wv_fitness_new/utils/text_styles.dart';

import '../utils/colors.dart';


class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Function() ontap;
  final String ?image;
  final Color buttonColor;
  final Color? imageColor;
   const CustomButton({super.key,this.image, required this.height, required this.width, required this.ontap, required this.buttonColor, required this.text, this.imageColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: getHeight(height),
        width: getWidth(width),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: buttonColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image==null?
            const SizedBox():
            Image.asset(image!,height: getHeight(30),width: getWidth(30),color: imageColor,),
            image==null?
            const SizedBox(): SizedBox(width: getWidth(7),),
            Text(text.tr,style: kSize22ColorWhite.copyWith(fontWeight: FontWeight.w700),),


          ],
        ),
      ),
    );
  }
}
