import 'package:complete_flutter_bootcamp/IAmPoor/lAmPoor.dart';
import 'package:complete_flutter_bootcamp/IAmRich/lAmRich.dart';
import 'package:complete_flutter_bootcamp/MiCard/layoutChallange.dart';
import 'package:complete_flutter_bootcamp/MiCard/miCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Home Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
