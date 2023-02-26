import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/module/task_data.dart';

class AddTask extends StatelessWidget {
  String currentTask = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
          ),
          TextField(
            autofocus: true,
            onChanged: (value) {
              currentTask = value;
            },
          ),
          const SizedBox(height: 15),
          Container(
            color: Colors.lightBlueAccent,
            child: TextButton(
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(currentTask);
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
