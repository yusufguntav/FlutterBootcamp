import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {super.key,
      required this.color,
      required this.cardChild,
      required this.onTapFunction});
  Function() onTapFunction;
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        margin: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(child: cardChild),
      ),
    );
  }
}
