import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:scratcher/widgets.dart';

class MainScreen extends StatelessWidget {
  final VoidCallback onMenuPressed;

  const MainScreen({super.key, required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          SizedBox(
            height: 278,
            width: 339,
            child: Scratcher(
              brushSize: 100,
              threshold: 100,
              color: const Color(0XFF53A553),
              onChange: (value) {},
              onThreshold: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    padding: EdgeInsets.all(35),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.black.withOpacity(0.05)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Tip of the day!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "“Tackle the toughest task first — it’s called ‘eating the frog’. Once it's done, the rest of the day feels lighter.”",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          // Grid section — only this scrolls
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(20),
              children: List.generate(6, (index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(16),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
