import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

int start = 1;
int end = 1;

double scale = 1;
double scaleSystem = 0;
double scaleMohamed = 0;
double turns = 0;


class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    start = Random().nextInt(3) + 1;

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff526D82),
        appBar: AppBar(
          backgroundColor: const Color(0xff27374D),
          title: const Text("Game"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              AnimatedRotation(
                turns: turns,
                duration: Duration(seconds: 2),
                curve: Curves.decelerate,
                child: AnimatedScale(
                  scale: scale,
                  duration: Duration(seconds: 1),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            width: 40,
                            height: 40,
                            child: Image.asset("images/paper_1.png"),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            width: 40,
                            height: 40,
                            child: Image.asset("images/paper_2.png"),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            width: 40,
                            height: 40,
                            child: Image.asset("images/paper_3.png"),
                          ),
                    ],
                  )

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        AnimatedScale(
                          scale: scaleSystem,
                          duration: Duration(seconds: 1),
                          child: TextButton(
                            onPressed: () {
                              setState(() {

                              });
                            },
                            child: Image.asset("images/paper_$start.png"),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Mohamed",
                          style: TextStyle(
                              color: Color(0xffDDE6ED),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    const Text(
                      "VS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children: [
                        AnimatedScale(
                          scale: scaleSystem,
                          duration: Duration(seconds: 1),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                }
                              );
                            },
                            child: Image.asset("images/paper_$end.png"),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "System",
                          style: TextStyle(
                              color: Color(0xffDDE6ED),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "You Win!",
                style: TextStyle(
                    color: Color(0xffDDE6ED),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(

                    onTap: (){
                      setState(() {
                        setState(() {
                          scaleSystem = 0;
                          scaleMohamed = 0;
                          Timer(Duration(seconds: 1), () {
                            setState(() {
                              scale = 1;
                              turns += 5 ;
                              scaleSystem = 1;
                              start = Random().nextInt(3) + 1;
                              end = Random().nextInt(3) +1;
                            });
                          });



                        });
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      width: 100,
                      height: 100,
                      child: Image.asset("images/paper_1.png"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 100,
                    height: 100,
                    child: Image.asset("images/paper_2.png"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 100,
                    height: 100,
                    child: Image.asset("images/paper_3.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
