

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../common/custom_text_style.dart';

class CustomContainer extends StatelessWidget {
  double height;
  double width;
  Color color;
  bool isSwitch;
  IconData iconData;
  String title;
  CustomContainer({super.key,required this.title, required this.iconData ,required this.isSwitch,required this.height,required this.width,required this.color});
  
  @override
  Widget build(BuildContext context) {
    double heightSpace = MediaQuery.of(context).size.height;
    double widthSpace = MediaQuery.of(context).size.width;
    return  Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color:  color ,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(iconData, color : isSwitch == true ?Colors.white : Colors.black87,size: 30,),
                            SizedBox(height: heightSpace * 0.020,),
                            CustomTextStyle(title, isSwitch == true ? Colors.white70 : Colors.black54, FontWeight.normal, 20),
                             SizedBox(height: heightSpace * 0.030,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextStyle(isSwitch == true ? "On" : "Off", isSwitch == true? Colors.white : Colors.black87, FontWeight.w700, 20),
                              
                                Container(
                                  height: heightSpace * 0.030,
                                  width: widthSpace * 0.100,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: isSwitch == true? Colors.white : Colors.white60)
                                  ),
                                  child: Switch(
                                    activeColor: Colors.transparent,
                        
                                    inactiveThumbColor: const Color(0xff152C5F),
                                    value: isSwitch, onChanged: (v){}),
                                )
                                // ToggleButtons(children: [
                      
                                // ], isSelected: [
                                    
                                // ])
                              ],
                            )
                          ],
                        ),
                      )
                    );
  }
}