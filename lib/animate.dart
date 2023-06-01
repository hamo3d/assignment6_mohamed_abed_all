import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const MyAnimate());

class MyAnimate extends StatefulWidget {
  const MyAnimate({Key? key}) : super(key: key);

  @override
  State<MyAnimate> createState() => _MyAnimateState();
}

class _MyAnimateState extends State<MyAnimate> {
  double scale = 1;
  double turns = 0;


  Duration duration = const Duration(milliseconds: 250);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedRotation(
            turns: turns,
            duration: Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn,
            child: AnimatedScale(
              duration: duration,
              scale: scale,
              // curve: Curves.easeInBack,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    scale = 2;
                    turns += 1;
                  });

                  Timer(duration, () {
                    setState(() {
                      scale = 1;
                      turns += 1 ;
                    });
                  });
                },
                child: const Icon(
                  Icons.access_alarm,size: 56,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
