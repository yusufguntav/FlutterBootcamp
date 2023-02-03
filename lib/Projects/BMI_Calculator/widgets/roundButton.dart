import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({super.key, required this.child, required this.onpress});
  final Widget child;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      elevation: 16,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      fillColor: const Color(0xFF4C4F5E),
      shape: const CircleBorder(),
      child: child,
    );
  }
}
