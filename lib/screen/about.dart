import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static String routeName = 'AboutPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'GLM Diary',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Version: 1.0.0',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Description: ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'I feel incredibly fortunate and\n lucky to present this app to you.\nIn this app we can find our memory for one more time.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Admin Details:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/dipraj.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'Dipraj Roy',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Email: diprajroy@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Thanks for being with us.\nI feel very lucky to develop my first app and fortunately that is it.\nMy joy knew know bound whenever I see this in my phone.\nIn a meantime I also feel thankful to my buddies who help me a lot.\nSpecially thanks to Sifat without his presence I can not made this for you.\nAnd I want to also thanks Zitu ,Apurbo and Suborna for their help to build UI Design and lot more',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
