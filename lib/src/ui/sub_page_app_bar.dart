import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskflow/src/ui/haptic_icon_button_ui.dart';

class SubPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle;
  final VoidCallback onPlusIconPressed;

  const SubPageAppBar({
    super.key,
    required this.pageTitle,
    required this.onPlusIconPressed,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.chevron_left, size: 45),
        onPressed: () {
          HapticFeedback.lightImpact();
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        pageTitle,
        style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
      ),
      actions: [
        HapticIconButton(
          icon: const Icon(Icons.add, color: Colors.white, size: 20.0),
          onPressed: () {
          },
        ),
        const SizedBox(width: 4),
        HapticIconButton(
          icon: const Icon(Icons.settings, color: Colors.white, size: 20.0),
          onPressed: () {
          },
        ),
      ],
    );
  }
}