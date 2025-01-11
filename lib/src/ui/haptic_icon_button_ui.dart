import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskflow/src/config/theme.dart';

class HapticIconButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;

  const HapticIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Theme.of(context).customIconBackground,
      child: IconButton(
        icon: icon,
        onPressed: () {
          HapticFeedback.lightImpact();
          onPressed();
        },
        iconSize: 35.0,
        constraints: const BoxConstraints(),
        splashRadius: 30.0,
      ),
    );
  }
}