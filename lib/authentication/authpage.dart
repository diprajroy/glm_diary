import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geology/authentication/all_auth.dart';
import 'package:geology/authentication/loginorregister.dart';

class AuthPage extends StatelessWidget {
  static String routeName = 'AuthPage';
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return verifyEmailAdress();
            } else {
              return const LoginOrRegister();
            }
          }),
    );
  }
}
