import 'package:flutter/material.dart';
import 'package:ue_student_portal/components/zoom_drawer.dart'; // Your post-login screen

import '../services/auth_service.dart'; // Import AuthService

class LoginScreenButtons extends StatelessWidget {
  final TextEditingController studentIdController;
  final TextEditingController passwordController;
  final Future<void> Function() onLogin;

  const LoginScreenButtons({
    super.key,
    required this.studentIdController,
    required this.passwordController,
    required this.onLogin, // callback for the login function
  });

  Future<void> _login(BuildContext context) async {
    String email = studentIdController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      _showErrorDialog(context, "Please enter both email and password");
      return;
    }

    // Using AuthService to perform login
    AuthService authService = AuthService();
    var userCredential = await authService.signInWithEmailPassword(
      email,
      password,
    );

    if (userCredential != null) {
      // Login successful, navigate to next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ZoomDrawerScreen()),
      );
    } else {
      // Show error dialog if login fails
      _showErrorDialog(context, "Login failed. Please check your credentials.");
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error"),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onLogin(); // Call the login function passed from LoginScreen
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 300,
        decoration: BoxDecoration(
          color: const Color(0xFF3E4562),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Text(
          "L O G I N",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
