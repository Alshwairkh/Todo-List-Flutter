import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/module/task_data.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(task.name, task.isDone, (checkBoxState) {
              taskData.updateTask(task);
            }, () {
              taskData.deleteTask(task);
            });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
