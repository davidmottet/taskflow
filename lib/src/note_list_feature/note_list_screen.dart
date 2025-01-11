import 'package:flutter/material.dart';

class NoteListScreen extends StatelessWidget {
  const NoteListScreen({super.key});
  
  static const routeName = '/noteList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note List'),
      ),
      body: const Center(
        child: Text('Here is the Note List Screen!'),
      ),
    );
  }
}