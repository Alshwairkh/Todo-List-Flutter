import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_list_app/module/task.dart';

class TaskView extends StatefulWidget {
  final List<Task> tasks;

  TaskView(this.tasks);
  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(widget.tasks[index].name, widget.tasks[index].isDone,
            (checkBoxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        });
      },
      itemCount: widget.tasks.length,
    );
  }
}
