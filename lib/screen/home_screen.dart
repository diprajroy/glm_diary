// ignore_for_file: prefer_interpolation_to_compose_strings, must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:geology/models/image.dart';

import 'package:geology/models/student_options.dart';

import 'package:geology/screen/faculty_teacher_list.dart';
import 'package:geology/screen/student_data.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  get firebaseuser => FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: Center(
          child: Text(
            "Welcome To \nGEOLOGY AND MINING",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: SideMenu(),
      body: Column(
        children: [
          Container(
            width: 100.w,
            height: 35.h,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Present Is The Key TO The Past",
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    kHalfSizedBox,
                    OnlyPicture(
                        picAddress: "assets/images/logo_geo.png",
                        onPress: () {})
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                      onPress: () {
                        Navigator.pushNamed(context, student_options.routeName);
                        //go to attendance screen
                      },
                      title: 'Regular Students',
                      value: '250+',
                    ),
                    StudentDataCard(
                      onPress: () {
                        //go to fee due screen
                        Navigator.pushNamed(context, FeeScreen.routeName);
                      },
                      title: 'Faculty Members',
                      value: '8',
                    ),
                  ],
                )
              ],
            ),
          ),

          //other will use all the remaining height of screen
          Expanded(
            child: Container(
              width: 100.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: kTopBorderRadius,
              ),
              child: ImageCarouselSlider(),
            ),
          ),

          Expanded(
              child: Container(
            width: 100.w,
            height: 20.h,
            decoration: BoxDecoration(
              color: kOtherColor,
            ),
            child: Text(
              "Notice BOARD",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ))
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 1.h),
        width: 20.w,
        height: 10.h,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: SizerUtil.deviceType == DeviceType.tablet ? 10.sp : 12.sp,
              width: SizerUtil.deviceType == DeviceType.tablet ? 10.sp : 12.sp,
              // ignore: deprecated_member_use
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
