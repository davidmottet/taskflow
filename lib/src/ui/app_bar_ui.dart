import 'package:flutter/material.dart';
import 'package:taskflow/src/ui/haptic_icon_button_ui.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.settings, color: Colors.white, size: 25.0),
                  SizedBox(width: 8),
                  Text('TaskFlow', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w700)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HapticIconButton(
                    icon: const Icon(Icons.person_2_outlined, color: Colors.white, size: 20.0),
                    onPressed: () {
                    },
                  ),
                  const SizedBox(width: 4),
                  HapticIconButton(
                    icon: const Icon(Icons.notifications_outlined, color: Colors.white, size: 20.0),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}