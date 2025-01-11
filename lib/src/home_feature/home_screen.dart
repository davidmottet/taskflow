import 'package:flutter/material.dart';
import 'package:taskflow/src/ui/app_bar_ui.dart';
import 'package:taskflow/src/ui/card_title_ui.dart';
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
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: [
                    // Première ligne : Tasks à gauche, Notes à droite
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          // Bloc gauche : Tasks
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Expanded(
                                  child: CardTile(
                                    color: Colors.black,
                                    title: "Task",
                                    subtitle: "subtitle",
                                  ),
                                ),
                                Expanded(
                                  child: CardTile(
                                    color: Colors.black,
                                    title: "Task",
                                    subtitle: "subtitle",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Bloc droit : Notes + icônes
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                // Partie Notes
                                Expanded(
                                  flex: 2,
                                  child: CardTile(
                                    color: Colors.black,
                                    title: "Task",
                                    subtitle: "subtitle",
                                  ),
                                ),
                                // Partie icônes
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      // Icône mail
                                      Expanded(
                                        child: CardTile(
                                          color: Colors.black,
                                          title: "Task",
                                          subtitle: "subtitle",
                                        ),
                                      ),
                                      // Icône caméra
                                      Expanded(
                                        child: CardTile(
                                          color: Colors.black,
                                          title: "Task",
                                          subtitle: "subtitle",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Deuxième ligne : Reminder
                    Expanded(
                      flex: 1,
                      child: CardTile(
                        color: Colors.black,
                        title: "Task",
                        subtitle: "subtitle",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}