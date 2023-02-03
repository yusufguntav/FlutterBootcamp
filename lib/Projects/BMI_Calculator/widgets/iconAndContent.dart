import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({super.key, required this.icon, required this.contentText});
  IconData icon;
  String contentText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          contentText,
          style: kTextStyle,
        )
      ],
    );
  }
}
