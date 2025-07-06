import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isLoading = false;

  void _submitLogin() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // Simulate loading before navigating
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          _isLoading = false;
        });

        Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF014e80),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock, color: Colors.white, size: 80),
                SizedBox(height: 24),
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Username',
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter username' : null,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter password' : null,
                ),
                SizedBox(height: 24),
                _isLoading
                    ? CircularProgressIndicator(color: Colors.white)
                    : ElevatedButton(
                        onPressed: _submitLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color(0xFF014e80),
                          padding: EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 12,
                          ),
                        ),
                        child: Text("Login"),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
