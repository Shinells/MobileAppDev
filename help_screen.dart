import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Help'), backgroundColor: Color(0xFF014e80)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/images/assistant_avatar.jpeg',
              ), // Use your asset
            ),
            SizedBox(height: 20),
            Text(
              "Hello, SHINELL",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("How can we help you today?"),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              child: Text("Let's Chat"),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'CONTACT US',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("EMAIL US"),
              subtitle: Text("assist@ecobank.com"),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("OUR WEBSITE"),
              subtitle: Text("https://www.ecobank.com"),
            ),
          ],
        ),
      ),
    );
  }
}
