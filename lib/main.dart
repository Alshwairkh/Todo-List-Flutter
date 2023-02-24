import 'package:flutter/material.dart';
import 'screens/tasks_screan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TasksScreen tasksScreen = TasksScreen();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tasksScreen,
    );
  }
}
