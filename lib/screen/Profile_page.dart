import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geology/constants.dart';

class all_Profile extends StatefulWidget {
  static String routeName = 'all_Profile';

  @override
  State<all_Profile> createState() => _all_ProfileState();
}

class _all_ProfileState extends State<all_Profile> {
  //user
  get firebaseuser => FirebaseAuth.instance.currentUser!;

  final userCollection = FirebaseFirestore.instance.collection("Users");

  //edit field
  Future<void> editField(String field) async {
    String newValue = "";
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "Edit " + field,
          style: const TextStyle(color: Colors.black45),
        ),
        content: TextField(
          autofocus: true,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              hintText: "Enter new $field",
              hintStyle: TextStyle(color: Colors.grey)),
          onChanged: (value) {
            newValue = value;
          },
        ),
        actions: [
          TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              }),
          TextButton(
              child: Text("Save"),
              onPressed: () {
                Navigator.of(context).pop(newValue);
              }),
        ],
      ),
    );
    if (newValue.trim().length > 0) {
      await userCollection.doc(firebaseuser.email).update({field: newValue});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
        ),
        body: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection("Users")
              .doc(firebaseuser.email)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final userData = snapshot.data!.data() as Map<String, dynamic>;
              return ListView(
                children: [
                  const SizedBox(height: 25),
                  Icon(
                    Icons.person,
                    size: 48,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    userData["username"],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      "My Details",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ),

                  //username
                  MyTextBox(
                    text: userData["username"],
                    SectionName: "UserName",
                    onPressed: () => editField("username"),
                  ),

                  //Email
                  MyTextBox(
                    text: userData["email"],
                    SectionName: "Email",
                    onPressed: () {},
                  ),
                  MyTextBox(
                    text: userData["number"],
                    SectionName: "Mobile No",
                    onPressed: () => editField("number"),
                  ),
                  MyTextBox(
                    text: userData["Roll_Number"],
                    SectionName: "Roll Number",
                    onPressed: () => editField("Roll_Number"),
                  ),
                  MyTextBox(
                    text: userData["Seission"],
                    SectionName: "Seission",
                    onPressed: () => editField("Seission"),
                  )
                ],
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Error" + snapshot.error.toString()),
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        ));
  }
}

class MyTextBox extends StatelessWidget {
  final String text;
  final String SectionName;
  final void Function()? onPressed;

  const MyTextBox({
    super.key,
    required this.text,
    required this.SectionName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: KdipPrimarycolor),
      padding: const EdgeInsets.only(left: 15, bottom: 15),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            SectionName,
            style: TextStyle(color: kdipgreencolor, fontSize: 20),
          ),
          IconButton(onPressed: onPressed, icon: Icon(Icons.settings))
        ]),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ]),
    );
  }
}
