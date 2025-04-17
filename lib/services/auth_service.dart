import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Hardcoded credentials for testing
  final String validEmail = "test@example.com"; // Replace with your test email
  final String validPassword = "password123"; // Replace with your test password

  // Sign In with Email and Password
  Future<UserCredential?> signInWithEmailPassword(
    String email,
    String password,
  ) async {
    // Check the provided credentials against the hardcoded values
    if (email == validEmail && password == validPassword) {
      // Simulate a successful login
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } else {
      // If the credentials don't match, return null to indicate failure
      print("Invalid credentials: email or password does not match.");
      return null;
    }
  }

  // Sign Out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
