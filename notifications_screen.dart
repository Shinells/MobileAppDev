import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Color(0xFF014e80),
      ),
      body: Center(child: Text("Notifications Page")),
    );
  }
}
