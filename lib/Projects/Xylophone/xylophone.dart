import 'package:complete_flutter_bootcamp/Projects/Xylophone/widgets/XylophoneButton.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  Xylophone({super.key});
  List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.green.shade900,
    Colors.blue,
    Colors.purple
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                for (int i = 1; i <= 7; i++) ...[
                  Expanded(
                    child: XylophoneButton(
                      noteNumber: '$i',
                      color: colors[i - 1],
                    ),
                  )
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
