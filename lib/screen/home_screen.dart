import 'package:flutter/material.dart';
import 'package:task_1/common/custom_text_style.dart';
import 'package:task_1/screen/widget/custom_container.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Icon> listIcon = [const Icon(Icons.living_outlined, color: Colors.black
  ,), const Icon(Icons.bedroom_child_outlined,color: Colors.black), const Icon(Icons.kitchen_outlined, color: Colors.black),const Icon(Icons.bathroom_outlined, color: Colors.black),const Icon(Icons.dining_outlined, color: Colors.black)];
  List<String> roomName = ["Living Room", "Bed Room", "Kitchen", "Bathroom", "Dining Room"];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffE8EAF0),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(

        backgroundColor: const Color(0xff0B0B45),
        onPressed: (){

        },
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          elevation: 0,
         backgroundColor: Colors.white70,
          currentIndex: 2,
          enableFeedback: false,
          showSelectedLabels: false,

          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Color(0xff687496),), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none_rounded, color: Color(0xff687496),), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings, color: Color(0xff687496),), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Color(0xff687496),), label: ""),
      ]),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CustomTextStyle("Hi Johnson!", Colors.black, FontWeight.w800, 22),
              const CircleAvatar(
                backgroundImage: AssetImage("assets/pp.jpg")
              ),

            ],
            ),
          // SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextStyle("Rooms", Colors.black, FontWeight.bold, 18),
              Row(
                children: [
                  IconButton(onPressed: (){

                  }, icon: const Icon(Icons.arrow_back_ios, size: 16,)),
                  IconButton(onPressed: (){

                  }, icon: const Icon(Icons.arrow_forward_ios, size: 16,)),
                ],
              )
            ],
          ),
          SizedBox(
            height: height* 0.150,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listIcon.length,
                itemBuilder: (_,index){
              return Padding(
                padding: const EdgeInsets.only(right: 18, top: 5,),
                child: Column(
                  children: [
                    Container(
                      height: height * .080,
                      width: width * 0.16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      child: listIcon[index],
                    ),
                    SizedBox(height: height * .01,),
                    Text(roomName[index]),
                  ],
                )
              );
            }),

          ),
          SizedBox(height:  height * .01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextStyle("Bedroom", Colors.black, FontWeight.w700, 22),
              CustomTextStyle("(4 Devices Connected)", Colors.black, FontWeight.normal, 14),

            ],
          ),
          SizedBox(height:  height * .020,),
          Padding(
            padding: const EdgeInsets.only(left:20, right: 20, bottom: 20),
            child: Row(
              children: [
                CustomContainer(title: "Smart\nLightinh", iconData: Icons.light_outlined, isSwitch: true, height: height * .220, width: width * 0.37, color: const Color(0xff152C5F)),
                SizedBox(width: width * .075,),
                CustomContainer(title: "Smart\nSpeakers", iconData: Icons.speaker_phone_sharp, isSwitch: false, height: height * .220, width: width * 0.38, color: const Color(0xffFFFFFF))
               
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20, right: 20),
            child: Row(
              children: [
                CustomContainer(title: "Smart\nTV", iconData: Icons.tv, isSwitch: false, height: height * .220, width: width * 0.37, color: const Color(0xffFFFFFF)),
                SizedBox(width: width * .075,),
                CustomContainer(title: "Air\nConditionaer", iconData: Icons.ac_unit_outlined, isSwitch: true, height: height * .220, width: width * 0.38, color: const Color(0xff152C5F)),
                
              ],
            ),
          )
          
        ],
      ),
          ),
      ),
    );
  }
}
