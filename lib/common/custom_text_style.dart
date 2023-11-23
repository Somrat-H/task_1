// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  String text;
  Color color;
  FontWeight fontWeight;
  double fontSize;
  CustomTextStyle(this.text, this.color, this.fontWeight, this.fontSize, {super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),);
  }
}
