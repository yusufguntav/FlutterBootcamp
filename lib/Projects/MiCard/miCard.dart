// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  const MiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[200],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/72694817?v=4'),
                ),
                Text(
                  'Yusuf Güntav',
                  style: TextStyle(
                    fontFamily: 'Dancing Script',
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 170,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: ListTile(
                    tileColor: Colors.black87,
                    leading: Icon(
                      Icons.phone,
                      color: Colors.green[200],
                    ),
                    title: Text(
                      '+90 531 123 45 67',
                      style: TextStyle(
                        color: Colors.green[200],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  child: ListTile(
                    tileColor: Colors.black87,
                    leading: Icon(
                      Icons.mail_outlined,
                      color: Colors.green[200],
                    ),
                    title: Text(
                      'ysf.guntav@gmail.com',
                      style: TextStyle(
                        color: Colors.green[200],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
