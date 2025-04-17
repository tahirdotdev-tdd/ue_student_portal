import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:scratcher/widgets.dart';

class TipScratcher extends StatefulWidget {
  const TipScratcher({super.key});

  @override
  _TipScratcherState createState() => _TipScratcherState();
}

class _TipScratcherState extends State<TipScratcher> {
  bool _showMessage = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 278,
      width: 339,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Scratcher(
            brushSize: 100,
            threshold: 100,
            color: const Color(0XFF53A553),
            onChange: (value) {
              if (_showMessage && value > 0) {
                setState(() {
                  _showMessage = false;
                });
              }
            },
            onThreshold: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
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
          if (_showMessage)
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                "Scratch to reveal!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
