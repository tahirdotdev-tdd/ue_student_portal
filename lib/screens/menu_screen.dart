import 'package:flutter/material.dart';

import '../services/auth_service.dart';
import 'login_screen.dart';

class MenuScreen extends StatelessWidget {
  final VoidCallback onItemPressed;

  const MenuScreen({super.key, required this.onItemPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF53A553),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DrawerHeader(child: CircleAvatar(radius: 40)),
            ListTile(
              leading: const Icon(Icons.home_outlined, color: Colors.white),
              title: const Text(
                "HOME",
                style: TextStyle(color: Colors.white, letterSpacing: 4),
              ),
              onTap: onItemPressed,
            ),
            ListTile(
              leading: const Icon(Icons.person_outline, color: Colors.white),
              title: const Text(
                "PROFILE",
                style: TextStyle(color: Colors.white, letterSpacing: 4),
              ),
              onTap: onItemPressed,
            ),
            ListTile(
              leading: const Icon(Icons.note_alt_outlined, color: Colors.white),
              title: const Text(
                "GRADE BOOK",
                style: TextStyle(color: Colors.white, letterSpacing: 4),
              ),
              onTap: onItemPressed,
            ),
            ListTile(
              leading: const Icon(Icons.book_outlined, color: Colors.white),
              title: const Text(
                "RESULTS",
                style: TextStyle(color: Colors.white, letterSpacing: 4),
              ),
              onTap: onItemPressed,
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.white),
              title: const Text(
                "HISTORY",
                style: TextStyle(color: Colors.white, letterSpacing: 4),
              ),
              onTap: onItemPressed,
            ),
            Spacer(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white),
              title: const Text(
                "LOG OUT",
                style: TextStyle(color: Colors.white, letterSpacing: 4),
              ),
              onTap: () async {
                // Perform logout
                AuthService authService = AuthService();
                await authService.signOut();

                // After logout, navigate to the login screen (or wherever appropriate)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ), // Navigate to LoginScreen
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
