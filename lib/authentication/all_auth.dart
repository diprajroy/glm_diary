import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geology/constants.dart';
import 'package:geology/screen/home_screen.dart';

class verifyEmailAdress extends StatefulWidget {
  static String routeName = 'verifyEmailAdress';
  const verifyEmailAdress({super.key});

  @override
  State<verifyEmailAdress> createState() => _verifyEmailAdressState();
}

class _verifyEmailAdressState extends State<verifyEmailAdress> {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    //user needs to be created before
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified) {
      sendVerificationEmail();

      timer = Timer.periodic(
        Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  Future checkEmailVerified() async {
    //call after email verification
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVerified) timer?.cancel();
  }

  Future sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
      setState(() => canResendEmail = false);
      await Future.delayed(Duration(seconds: 30));
      setState(() => canResendEmail = true);
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) => isEmailVerified
      ? HomeScreen()
      : Scaffold(
          appBar: AppBar(
            title: Text("Verify E M A I L"),
          ),
          body: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "A Verification Email Has Been Sent To Your Email.\nPlease, Click the Link For Verified",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  sizedBox,
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                      ),
                      onPressed: canResendEmail ? sendVerificationEmail : null,
                      icon: Icon(
                        Icons.email,
                        size: 32,
                      ),
                      label: Text("Resend Email")),
                  sizedBox,
                  TextButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(50)),
                      onPressed: () => FirebaseAuth.instance.signOut(),
                      child: Text(
                        "Cancel",
                        style: TextStyle(fontSize: 24),
                      ))
                ],
              )),
        );
}
