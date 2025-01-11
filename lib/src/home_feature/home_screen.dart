import 'package:flutter/material.dart';
import 'package:taskflow/src/ui/app_bar_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}