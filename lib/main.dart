import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geology/api/message.dart';
import 'package:geology/authentication/authpage.dart';

import 'package:geology/routes.dart';

import 'package:geology/themes.dart';
import 'package:sizer/sizer.dart';

final NavigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotifications();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    //it requires 3 parameters
    //context, orientation, device
    //it always requires, see plugin documentation
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthPage(),

        title: 'Geology and Mining',
        theme: CustomTheme().baseTheme,
        //initial route is splash screen
        //mean first screen
        // initialRoute: SplashScreen.routeName,
        //define the routes file here in order to access the routes any where all over the app
        routes: routes,
      );
    });
  }
}
