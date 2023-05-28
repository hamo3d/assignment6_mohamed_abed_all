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
int _user = 0;
int _com = 0;

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    start = Random().nextInt(3) + 1;
    end = Random().nextInt(3) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _user.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(_com.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white)),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              start = Random().nextInt(3) + 1;
                              end = Random().nextInt(3) + 1;
                              if(start == 1 && end == 2){
                                _user++;
                              }else if(end == 1 && start == 2){
                                _com++;
                              }
                            });
                          },
                          child: Image.asset("images/paper_$start.png"),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              start = Random().nextInt(3) + 1;
                              end = Random().nextInt(3) + 1;
                              if(start == 1 && end == 2){
                                _user++;
                              }else if(end == 1 && start == 2){
                                _com++;
                              }
                            });
                          },
                          child: Image.asset("images/paper_$start.png"),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
