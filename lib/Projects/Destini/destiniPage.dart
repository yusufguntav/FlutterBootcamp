import 'package:complete_flutter_bootcamp/Projects/Destini/modules/storyBrain.dart';
import 'package:flutter/material.dart';

class DestiniPage extends StatefulWidget {
  const DestiniPage({super.key});

  @override
  State<DestiniPage> createState() => _DestiniPageState();
}

StoryBrain storyBrain = StoryBrain();

class _DestiniPageState extends State<DestiniPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 20,
                child: Center(
                  child: SingleChildScrollView(
                    child: Text(
                      storyBrain.getStory(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      setState(
                        () {
                          storyBrain.nextStory(1);
                        },
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue.shade700,
                    ),
                    child: Text(
                      storyBrain.getChoice1(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Visibility(
                visible: storyBrain.buttonShouldBeVisible(),
                child: Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(
                          () {
                            storyBrain.nextStory(2);
                          },
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        storyBrain.getChoice2(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
