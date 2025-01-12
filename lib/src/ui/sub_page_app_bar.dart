import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        icon: Icon(Icons.chevron_left),
        onPressed: () {
          HapticFeedback.lightImpact();
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        pageTitle,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed:  () {
          HapticFeedback.lightImpact();
          onPlusIconPressed();
        },
        ),
      ],
    );
  }
}