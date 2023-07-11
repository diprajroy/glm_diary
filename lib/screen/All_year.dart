import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geology/constants.dart';
import 'package:geology/database/syllebus.dart';

class allYear extends StatefulWidget {
  static String routeName = 'allYear';

  @override
  State<allYear> createState() => _allYearState();
}

class _allYearState extends State<allYear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses of BS(Hons)"),
      ),
      drawer: SideMenu(),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedButton(
                    label: "1st Year",
                    onPressed: () {
                      Navigator.pushNamed(context, sylleBus1.routeName);
                    }),
                SizedBox(
                  height: 10,
                ),
                AnimatedButton(
                    label: "2nd Year",
                    onPressed: () {
                      Navigator.pushNamed(context, sylleBus.routeName);
                    }),
                SizedBox(
                  height: 10,
                ),
                AnimatedButton(
                    label: "3rd Year",
                    onPressed: () {
                      Navigator.pushNamed(context, sylleBus3.routeName);
                    }),
                SizedBox(
                  height: 10,
                ),
                AnimatedButton(
                    label: "4th Year",
                    onPressed: () {
                      Navigator.pushNamed(context, sylleBus4.routeName);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
