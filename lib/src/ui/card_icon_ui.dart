import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;

  const CardIcon({
    super.key,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Icon(
              icon,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}