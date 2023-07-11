import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geology/api/noticeboard.dart';

import 'package:geology/models/student_options.dart';
import 'package:geology/screen/All_year.dart';
import 'package:geology/screen/Profile_page.dart';
import 'package:geology/screen/about.dart';
import 'package:geology/screen/credits.dart';
import 'package:geology/screen/faculty_teacher_list.dart';
import 'package:geology/screen/home_screen.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'database/pdf_data.dart';

//colors
const Color kPrimaryColor = Color(0xFF345FB4);
const Color kSecondaryColor = Color(0xFF6789CA);
const Color kTextBlackColor = Color(0xFF313131);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFF777777);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kErrorBorderColor = Color(0xFFE74C3C);
const Color kdipcolor = Color(0xFF6600CC);
const Color kdip2color = Color(0xFF152238);
const Color kdipgreencolor = Color.fromARGB(255, 90, 168, 71);
const Color KdipPrimarycolor = Color(0xFF24214d);
//default value
const kDefaultPadding = 20.0;

const sizedBox = SizedBox(
  height: kDefaultPadding,
);
const kWidthSizedBox = SizedBox(
  width: kDefaultPadding,
);

const kHalfSizedBox = SizedBox(
  height: kDefaultPadding / 2,
);

const kHalfWidthSizedBox = SizedBox(
  width: kDefaultPadding / 2,
);

final kTopBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  topRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);
final kallRadius = BorderRadius.only(
  topLeft: Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  topRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  bottomRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  bottomLeft:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kBottomBorderRadius = BorderRadius.only(
  bottomRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  bottomLeft:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kInputTextStyle = GoogleFonts.poppins(
    color: kTextBlackColor, fontSize: 11.sp, fontWeight: FontWeight.w500);

//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//validation for email
const String emailPattern =
    r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';

class GradientBackground extends StatelessWidget {
  final List<Color> colors;
  final Alignment begin;
  final Alignment end;
  final Widget child;

  GradientBackground({
    required this.colors,
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomCenter,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: colors,
        ),
      ),
      child: child,
    );
  }
}

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: KdipPrimarycolor,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'H O M E',
              style: TextStyle(color: kTextBlackColor, fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'My Profile',
              style: TextStyle(color: kTextBlackColor, fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, all_Profile.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.album),
            title: Text(
              'Notice Board',
              style: TextStyle(color: kTextBlackColor, fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, NoticeBoardScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text(
              'Faculty Members',
              style: TextStyle(color: kTextBlackColor, fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, FeeScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Students',
              style: TextStyle(color: kTextBlackColor, fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, student_options.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.attachment),
            title: Text(
              'Courses of BS (Hons)',
              style: TextStyle(color: kTextBlackColor, fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, allYear.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.download),
            title: Text(
              'PDF Book Section',
              style: TextStyle(color: kTextBlackColor, fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              'About',
              style: TextStyle(color: kTextBlackColor, fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, AboutPage.routeName);
              // Handle about menu item press
            },
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text(
              'Credits',
              style: TextStyle(color: kTextBlackColor, fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, CreditPage.routeName);
              // Handle about menu item press
            },
          ),
          ListTile(
              leading: Icon(Icons.logout_sharp),
              title: Text(
                'Signout',
                style: TextStyle(color: kTextBlackColor, fontSize: 18),
              ),
              onTap: () {
                FirebaseAuth.instance.signOut();
              }),
        ],
      ),
    );
  }
}

class AnimatedButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;

  AnimatedButton({required this.label, required this.onPressed});

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: AnimatedContainer(
        width: 90.w,
        height: 07.h,
        duration: Duration(milliseconds: 150),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: _isPressed ? Colors.blue[800] : Colors.blueGrey,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0.0, 4.0),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Text(
          widget.label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
