import 'package:flutter/material.dart';
import 'package:taskflow/src/config/theme.dart';
import 'package:taskflow/src/ui/card_task_ui.dart';
import 'package:taskflow/src/ui/sub_page_app_bar.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  static const routeName = '/taskList';

  @override
  Widget build(BuildContext context) {
    // Exemple de données
    final tasks = [
      {
        'color': Theme.of(context).customOrange,
        'title': 'Réunion de projet',
        'categories': ['Travail', 'Urgent'],
        'startTime': '09:00 AM',
        'endTime': '10:00 AM',
        'lineColor': Theme.of(context).customGreen,
      },
      {
        'color': Theme.of(context).customOrange,
        'title': 'Déjeuner avec client',
        'categories': ['Personnel'],
        'startTime': '12:00 PM',
        'endTime': '01:00 PM',
        'lineColor': Theme.of(context).customViolet,
      },
      // Ajoutez d'autres tâches ici
    ];

    return Scaffold(
      appBar: SubPageAppBar(
        pageTitle: "Task",
        onPlusIconPressed: () {
          // Action à exécuter lorsque l'icône "+" est pressée
        }
      ),
      body: ListView.builder(
        itemCount: tasks.length, // Remplacez par le nombre d'éléments que vous avez
        itemBuilder: (context, index) {
          final task = tasks[index];
          return CardTask(
            color: task['color'] as Color,
            lineColor: task['lineColor'] as Color,
            title: task['title'] as String,
            categories: task['categories'] as List<String>,
            startTime: task['startTime'] as String,
            endTime: task['endTime'] as String
          );
        }
      ),
    );
  }
}