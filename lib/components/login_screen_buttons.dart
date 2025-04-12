import 'package:flutter/material.dart';

class LoginScreenButtons extends StatelessWidget {
  const LoginScreenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 300,
      decoration: BoxDecoration(
        color: Color(0xFF3E4562),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        textAlign: TextAlign.center,
        "L O G I N",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class LoginScreenButtons2 extends StatelessWidget {
  const LoginScreenButtons2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 300,
      decoration: BoxDecoration(
        color: Color(0xFFFFC241),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        textAlign: TextAlign.center,
        "RECOVER PASSWORD",
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
