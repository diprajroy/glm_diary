import 'package:flutter/material.dart';
import 'package:geology/constants.dart';
import 'package:geology/models/student.dart';
import 'package:geology/screen/student_data.dart';

class student_options extends StatefulWidget {
  static String routeName = 'Student_options';

  @override
  State<student_options> createState() => _student_optionsState();
}

class _student_optionsState extends State<student_options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student List of \nGeology and Mining",
          textAlign: TextAlign.center,
        ),
      ),
      drawer: SideMenu(),
      body: GradientBackground(
        colors: [Colors.blue, Colors.green],
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(children: [
            const SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StudentDataCardlomba(
                    title: "First Batch",
                    value: "Allumni",
                    onPress: () {
                      Navigator.pushNamed(context, StudentData.routeName);
                    }),
                SizedBox(height: 10),
                StudentDataCardlomba(
                    title: "Second Batch",
                    value: "Allumni",
                    onPress: () {
                      Navigator.pushNamed(context, StudentData2.routeName);
                    }),
                SizedBox(height: 10),
                StudentDataCardlomba(
                    title: "Third Batch",
                    value: "Allumni",
                    onPress: () {
                      Navigator.pushNamed(context, StudentData3.routeName);
                    }),
                SizedBox(height: 10),
                StudentDataCardlomba(
                    title: "Fourth Batch",
                    value: "Current",
                    onPress: () {
                      Navigator.pushNamed(context, StudentData4.routeName);
                    }),
                SizedBox(height: 10),
                StudentDataCardlomba(
                    title: "Fifth Batch",
                    value: "Current",
                    onPress: () {
                      Navigator.pushNamed(context, StudentData5.routeName);
                    }),
                SizedBox(height: 10),
                StudentDataCardlomba(
                    title: "Sixth Batch",
                    value: "Current",
                    onPress: () {
                      Navigator.pushNamed(context, StudentData6.routeName);
                    }),
                SizedBox(height: 10),
                StudentDataCardlomba(
                    title: "Seventh Batch",
                    value: "Current",
                    onPress: () {
                      Navigator.pushNamed(context, StudentData7.routeName);
                    }),
                SizedBox(height: 10),
                StudentDataCardlomba(
                    title: "Eight Batch",
                    value: "Current",
                    onPress: () {
                      Navigator.pushNamed(context, StudentData.routeName);
                    }),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
