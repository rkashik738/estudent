import 'package:flutter/material.dart';

class TopbarMenu extends StatelessWidget {
  const TopbarMenu({super.key, required this.icones, required this.label});

  final IconData icones;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(icones),
          const SizedBox(
            height: 8,
          ),
          Text(label),
        ],
      ),
    );
  }
}