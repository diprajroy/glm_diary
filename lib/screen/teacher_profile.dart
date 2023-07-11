import 'package:flutter/material.dart';
import 'package:geology/constants.dart';
import 'package:geology/screen/student_data.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../models/teacher.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({required this.teacher, super.key});
  static String routeName = 'MyprofileScreen';
  final Teacher teacher;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Faculty Member",
          style: TextStyle(fontSize: 18, color: Colors.white70),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              /// -- IMAGE
              Stack(
                children: [
                  SizedBox(
                    width: 140,
                    height: 140,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: OnlyPicture(
                            picAddress: teacher.imageUrl, onPress: () {})),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kOtherColor),
                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(teacher.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold)),
                  sizedBox,
                  Text(teacher.designation,
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              sizedBox,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mobile No : ${teacher.contactNumber}",
                      style: Theme.of(context).textTheme.titleSmall),
                  Text("E-mail : ${teacher.email}",
                      style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(height: 20),
                ],
              ),

              /// -- BUTTON
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    child: const Text("Call Now"),
                    onPressed: () async {
                      FlutterPhoneDirectCaller.callNumber(
                          teacher.contactNumber);
                    }),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              /// -- MENU
              ///ProfileMenuWidget(title: "Settings", icon: LineAwesomeIcons.cog, onPress: () {}),
              ///ProfileMenuWidget(title: "Billing Details", icon: LineAwesomeIcons.wallet, onPress: () {}),
              //ProfileMenuWidget(title: "User Management", icon: LineAwesomeIcons.user_check, onPress: () {}),
              ///const Divider(),
              ///const SizedBox(height: 10),
              ///ProfileMenuWidget(title: "Information", icon: LineAwesomeIcons.info, onPress: () {}),
              ///ProfileMenuWidget(
              ///title: "Logout",
              //icon: LineAwesomeIcons.alternate_sign_out,
              //textColor: Colors.red,
              //endIcon: false,
              //onPress: () {
              //Get.defaultDialog(
              //title: "LOGOUT",
              //titleStyle: const TextStyle(fontSize: 20),
              //content: const Padding(
              // padding: EdgeInsets.symmetric(vertical: 15.0),
              //child: Text("Are you sure, you want to Logout?"),
              //),
              // confirm: Expanded(
              //child: ElevatedButton(
              // onPressed: () => AuthenticationRepository.instance.logout(),
              // style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent, side: BorderSide.none),
              // child: const Text("Yes"),
              //// ),
              // ),
              //cancel: OutlinedButton(onPressed: () => Get.back(), child: const Text("No")),
              // );
              //}),
            ],
          ),
        ),
      ),
    );
  }
}
