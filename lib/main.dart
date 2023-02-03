import 'package:complete_flutter_bootcamp/Projects/BMI_Calculator/pages/bmiPage.dart';
import 'package:complete_flutter_bootcamp/Projects/Destini/destiniPage.dart';
import 'package:complete_flutter_bootcamp/Projects/Dicee/dice.dart';
import 'package:complete_flutter_bootcamp/Projects/IAmPoor/lAmPoor.dart';
import 'package:complete_flutter_bootcamp/Projects/IAmRich/lAmRich.dart';
import 'package:complete_flutter_bootcamp/Projects/Magic8Ball/magic8ball.dart';
import 'package:complete_flutter_bootcamp/Projects/MiCard/layoutChallange.dart';
import 'package:complete_flutter_bootcamp/Projects/MiCard/miCard.dart';
import 'package:complete_flutter_bootcamp/Projects/Quezzler/quezzler.dart';
import 'package:complete_flutter_bootcamp/Projects/Xylophone/xylophone.dart';
import 'package:complete_flutter_bootcamp/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bootcamp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/bmiCalculator',
      routes: {
        '/': (context) => const HomePage(),
        '/iAmRich': (context) => const IAmRich(),
        '/iAmPoor': (context) => const IAmPoor(),
        '/layoutChallange': (context) => const LayoutChallange(),
        '/miCard': (context) => const MiCard(),
        '/dicee': (context) => const Dice(),
        '/magic8ball': (context) => const Magic8Ball(),
        '/xylophone': (context) => Xylophone(),
        '/quezzler': (context) => const QuezzlerPage(),
        '/destini': (context) => const DestiniPage(),
        '/bmiCalculator': (context) => const BMI_Calculator(),
      },
    );
  }
}
