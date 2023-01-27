import 'package:flutter/material.dart';

class IAmPoor extends StatelessWidget {
  const IAmPoor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[500],
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: const Text("I Am Poor"),
          centerTitle: true,
        ),
        body: const Center(
          child: Image(
            image:
                NetworkImage('https://img.icons8.com/ios-glyphs/512/coal.png'),
          ),
        ),
      ),
    );
  }
}
