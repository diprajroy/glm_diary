import 'package:flutter/material.dart';
import 'package:geology/screen/teacher_profile.dart';
import '../database/teacher_data.dart';
import 'student_data.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    var arrimages = [
      "assets/images/sukhen.jpg",
      "assets/images/dhiman.jpg",
      "assets/images/jafor.png",
      "assets/images/risalat.jpg",
      "assets/images/illus.jpg",
      "assets/images/salman.png",
      "assets/images/hasnat.png",
      "assets/images/atiqul.jpg"
    ];
    var arrdetails = [
      "+8801913725897 \nChairman and Assistant Professor",
      "+8801779246902 \nAssociate Professor",
      "+8801759-707030 \nAssociate Professor",
      "+8801717041895 \nAssistant Professor",
      "+8801736171836 \nAssitant Professor",
      "+8801674917365 \nAssistant Professor",
      "+8801723961386 \nAssistant Professor",
      "+8108068003339 \nLecturer",
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Faculty Members")),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: StudentPicture(
                  picAddress: (arrimages[index]),
                  onPress: () {
                    // Navigator.pushNamed(context, MyProfileScreen.routeName,arguments: );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyProfileScreen(teacher: teachers[index])));
                  }),
              title: Text(
                teachers[index].name,
                style: const TextStyle(fontSize: 18),
              ),
              subtitle: SelectableText(
                arrdetails[index],
                style: const TextStyle(fontSize: 12),
              ),
              trailing: IconButton(
                iconSize: 30,
                icon: const Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyProfileScreen(teacher: teachers[index])));
                },
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 50,
              thickness: 2,
            );
          },
          itemCount: teachers.length,
        ));
  }
}
