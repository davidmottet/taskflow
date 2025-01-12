import 'package:flutter/material.dart';
import 'package:taskflow/src/ui/sub_page_app_bar.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  static const routeName = '/taskList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SubPageAppBar(
        pageTitle: "Task",
        onPlusIconPressed: () {
          // Action à exécuter lorsque l'icône "+" est pressée
        }
      ),
      body: const Center(
        child: Text('Here is the Task List Screen!'),
      ),
    );
  }
}