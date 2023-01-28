import 'package:flutter/material.dart';

class IAmRich extends StatelessWidget {
  const IAmRich({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('I Am Rich'),
          backgroundColor: Colors.blue[600],
        ),
        body: const Center(
          child: Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1562162135-9f64f33e623b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y3J5c3RhbHxlbnwwfHwwfHw%3D&w=1000&q=80'),
          ),
        ),
      ),
    );
  }
}
