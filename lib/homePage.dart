import 'package:complete_flutter_bootcamp/Projects/Dicee/dice.dart';
import 'package:complete_flutter_bootcamp/Projects/Magic8Ball/magic8ball.dart';
import 'package:complete_flutter_bootcamp/Projects/Quezzler/quezzler.dart';
import 'package:complete_flutter_bootcamp/Projects/Xylophone/xylophone.dart';
import 'package:flutter/material.dart';

import 'Projects/IAmPoor/lAmPoor.dart';
import 'Projects/IAmRich/lAmRich.dart';
import 'Projects/MiCard/layoutChallange.dart';
import 'Projects/MiCard/miCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          centerTitle: true,
          title: const Text("Home Page"),
        ),
        body: Center(
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IAmRich(),
                    ),
                  );
                },
                child: const Text("I Am Rich"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IAmPoor(),
                    ),
                  );
                },
                child: const Text("I Am Poor"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LayoutChallange(),
                    ),
                  );
                },
                child: const Text("Layout Challange"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MiCard(),
                    ),
                  );
                },
                child: const Text("MiCard"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dice(),
                    ),
                  );
                },
                child: const Text("Dicee"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Magic8Ball(),
                    ),
                  );
                },
                child: const Text("Magic 8 Ball"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Xylophone(),
                    ),
                  );
                },
                child: const Text("Xylophone"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuezzlerPage(),
                    ),
                  );
                },
                child: const Text("Quezzler"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
