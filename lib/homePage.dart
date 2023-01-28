import 'package:complete_flutter_bootcamp/Projects/Dicee/dice.dart';
import 'package:complete_flutter_bootcamp/Projects/Magic8Ball/magic8ball.dart';
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
        appBar: AppBar(
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
              const SizedBox(
                height: 5,
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
              const SizedBox(
                height: 5,
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
              const SizedBox(
                height: 5,
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
              const SizedBox(
                height: 5,
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
              const SizedBox(
                height: 5,
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
            ],
          ),
        ),
      ),
    );
  }
}
