import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ue_student_portal/components/tip_scratcher.dart';

class MainScreen extends StatelessWidget {
  final VoidCallback onMenuPressed;

  const MainScreen({super.key, required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0XFFdfdfdf),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: onMenuPressed,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 45, right: 30, top: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome back,", style: TextStyle(fontSize: 20)),
                    Text("Tahir 👏!", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Spacer(),
                Transform.rotate(
                  angle: pi / 4,
                  child: Icon(Icons.notifications_active_outlined, size: 30),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          TipScratcher(),
          SizedBox(height: 20),

          // Grid section — only this scrolls
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(20),
              children: List.generate(6, (index) {
                final imagePaths = [
                  'lib/assets/tileIcons/book.png',
                  'lib/assets/tileIcons/history.png',
                  'lib/assets/tileIcons/time.png',
                  'lib/assets/tileIcons/teachEval.png',
                  'lib/assets/tileIcons/courseEval.png',
                  'lib/assets/tileIcons/contact.png',
                ];

                final labels = [
                  'GRADE BOOK',
                  'FEE HISTORY',
                  'TIME TABLE',
                  'TEACHER EVALUATION',
                  'COURSE EVALUATION',
                  'CONTACT US',
                ];

                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        imagePaths[index],
                        width: 30,
                        height: 30,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        labels[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
