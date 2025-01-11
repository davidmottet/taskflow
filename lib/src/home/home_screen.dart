import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.settings),
            SizedBox(width: 8),
            Text('TaskFlow'),
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.notifications),
            onSelected: (String result) {
              // Action à effectuer lors de la sélection d'une notification
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Notification 1',
                child: Text('Notification 1'),
              ),
              const PopupMenuItem<String>(
                value: 'Notification 2',
                child: Text('Notification 2'),
              ),
              const PopupMenuItem<String>(
                value: 'Notification 3',
                child: Text('Notification 3'),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Action pour l'icône de connexion
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}