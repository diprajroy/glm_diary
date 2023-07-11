import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:geology/constants.dart';

class Notify extends StatelessWidget {
  static const route = '/Notify';

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Title : ${message.notification?.title}"),
            Text("body : ${message.notification?.body}"),
            Text("Data : ${message.data}"),
          ],
        ),
      ),
    );
  }
}
