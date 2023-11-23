import 'package:flutter/material.dart';
import 'package:task_1/common/custom_text_style.dart';
import 'package:task_1/screen/home_screen.dart';

import 'package:task_1/screen/widget/custom_button.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff0B0B45),
      body: Container(
        height: height * 10,
        width: width * 100,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/background.jpg", ), fit: BoxFit.fill)
        ),
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextStyle("Myzone", Colors.white, FontWeight.w400, 22),
                  SizedBox(height: height * .60,),
                  CustomTextStyle("Easy Control\nYour Home", Colors.white, FontWeight.w700, 26),
                  SizedBox(height: height * .050,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> const HomePage()));
                    },
                      child: const CustomButton()),
                ],
              ),
            )
        ),
      ),
    );
  }
}
