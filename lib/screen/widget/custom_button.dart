import 'package:flutter/material.dart';

import '../../common/custom_text_style.dart';
class CustomButton extends StatelessWidget {
  const CustomButton ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    
    return Container(
      height: height * 0.090,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white)
      ),
      child: Center(child: CustomTextStyle("Get Started", Colors.white, FontWeight.w400, 18)),
    );
  }
}
