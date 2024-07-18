import 'package:flutter/material.dart';

class MainBodyCard extends StatelessWidget {
  const MainBodyCard({super.key, required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(50)),
    );
  }
}