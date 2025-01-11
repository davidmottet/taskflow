import 'package:flutter/material.dart';
import 'package:taskflow/src/ui/app_bar_ui.dart';
import 'package:taskflow/src/ui/haptic_icon_button_ui.dart';
import 'package:taskflow/src/ui/search_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Text(
              'Daily Work Priorities',
              style: TextStyle(fontSize: 65.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 32.0),
            Row(
              children: [
                CustomSearch(),
                SizedBox(width: 8.0),
                HapticIconButton(
                  icon: Icon(Icons.add, color: Colors.white, size: 20.0),
                  onPressed: () {
                  },
                ),
                SizedBox(width: 8.0),
                HapticIconButton(
                  icon: Icon(Icons.settings, color: Colors.white, size: 20.0),
                  onPressed: () {
                  },
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}