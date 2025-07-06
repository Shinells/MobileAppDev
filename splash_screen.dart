import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, AppRoutes.login);
    });

    return Scaffold(
      backgroundColor: Color(0xFF014e80), // Deep Ecobank blue
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/ecobank_logo.png', height: 150),
            SizedBox(height: 20),
            Text(
              'Making sure your connection is secure!',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
