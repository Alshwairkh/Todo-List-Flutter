import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Drink Water'),
    Task(name: 'go to the gym'),
    Task(name: 'Drink juice'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String task) {
    _tasks.add(Task(name: task));
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
