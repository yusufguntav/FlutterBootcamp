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
                  Navigator.pushNamed(context, '/iAmRich');
                },
                child: const Text("I Am Rich"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/iAmPoor');
                },
                child: const Text("I Am Poor"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/layoutChallange');
                },
                child: const Text("Layout Challange"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/miCard');
                },
                child: const Text("MiCard"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dicee');
                },
                child: const Text("Dicee"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/magic8ball');
                },
                child: const Text("Magic 8 Ball"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/xylophone');
                },
                child: const Text("Xylophone"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/quezzler');
                },
                child: const Text("Quezzler"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/destini');
                },
                child: const Text("Destini"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bmiCalculator');
                },
                child: const Text("BMI Calculator"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
