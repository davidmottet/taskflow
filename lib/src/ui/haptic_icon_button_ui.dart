import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      child: IconButton(
        icon: icon,
        onPressed: () {
          HapticFeedback.lightImpact();
          onPressed();
        },
        iconSize: 35.0,
        color: Theme.of(context).primaryColor,
        constraints: const BoxConstraints(),
        splashRadius: 24.0,
      ),
    );
  }
}