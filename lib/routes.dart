import 'package:flutter/cupertino.dart';
import 'package:geology/api/noticeboard.dart';
import 'package:geology/authentication/all_auth.dart';

import 'package:geology/authentication/authpage.dart';

import 'package:geology/authentication/loginorregister.dart';
import 'package:geology/authentication/register_page.dart';
import 'package:geology/database/pdf_data.dart';
import 'package:geology/database/syllebus.dart';

import 'package:geology/models/student.dart';
import 'package:geology/models/student_options.dart';
import 'package:geology/screen/All_year.dart';
import 'package:geology/screen/Profile_page.dart';
import 'package:geology/screen/about.dart';
import 'package:geology/screen/credits.dart';

import 'package:geology/screen/faculty_teacher_list.dart';
import 'package:geology/authentication/google_auth.dart';
import 'package:geology/screen/home_screen.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android

  HomeScreen.routeName: (context) => HomeScreen(),
  verifyEmailAdress.routeName: (context) => verifyEmailAdress(),
  AuthPage.routeName: (context) => AuthPage(),
  FeeScreen.routeName: (context) => FeeScreen(),
  CreditPage.routeName: (context) => CreditPage(),
  AboutPage.routeName: (context) => AboutPage(),
  sylleBus.routeName: (context) => sylleBus(),
  sylleBus1.routeName: (context) => sylleBus1(),
  sylleBus3.routeName: (context) => sylleBus3(),
  sylleBus4.routeName: (context) => sylleBus4(),
  allYear.routeName: (context) => allYear(),
  all_Profile.routeName: (context) => all_Profile(),
  NoticeBoardScreen.routeName: (context) => NoticeBoardScreen(),
  StudentData.routeName: (context) => StudentData(),
  student_options.routeName: (context) => student_options(),
  StudentData2.routeName: (context) => StudentData2(),
  StudentData3.routeName: (context) => StudentData3(),
  StudentData4.routeName: (context) => StudentData4(),
  StudentData5.routeName: (context) => StudentData5(),
  StudentData6.routeName: (context) => StudentData6(),
  StudentData7.routeName: (context) => StudentData7(),
  LoginPage.routeName: (context) => LoginPage(onTap: () {}),
  LoginOrRegister.routeName: (context) => LoginOrRegister(),
  RegisterPage.routeName: (context) => RegisterPage(onTap: () {}),
};
