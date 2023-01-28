import 'dart:math';

import 'package:flutter/material.dart';

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({super.key});

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          centerTitle: true,
          title: const Text('Ask Me Anything'),
        ),
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () => setState(
                () {
                  ballNumber = Random().nextInt(5) + 1;
                },
              ),
              child: Image.asset('assets/images/ball/ball$ballNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}
