import 'package:flutter/material.dart';

class CreditPage extends StatelessWidget {
  static String routeName = 'CreditPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credits'),
      ),
      body: ListView(
        children: [
          CreditCard(
            image: 'assets/images/sifat.jpg',
            name: 'Md. Shoibur Rahman Khan Sifat',
            email: 'diprajroy@gmail.com',
            contributions: ['App Developer', 'UI Designer'],
          ),

          CreditCard(
            image: 'assets/images/zitu.png',
            name: 'Zitu Kundu',
            email: 'zitukundu01@gmail.com',
            contributions: ['App Logo Designer', 'Assist on planning'],
          ),
          CreditCard(
            image: 'assets/images/dipraj.jpg',
            name: 'Dipraj Roy',
            email: 'diprajroy@gmail.com',
            contributions: ['Founder of this App', 'App developer'],
          ),
          // Add more CreditCard widgets for additional show creators
        ],
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  final String image;
  final String name;
  final String email;
  final List<String> contributions;

  const CreditCard({
    required this.image,
    required this.name,
    required this.email,
    required this.contributions,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 4, 0, 255),
                Color.fromARGB(153, 0, 0, 0)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(height: 20),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Email: $email',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  'Contributions:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                for (String contribution in contributions)
                  Text(
                    '- $contribution',
                    style: TextStyle(fontSize: 16),
                  ),
              ],
            ),
          ),
        ));
  }
}
