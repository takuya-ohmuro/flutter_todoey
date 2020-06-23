import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/tasks_title.dart';
import 'package:todoeyflutter/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskdata.task[index];
            return InkWell(
              onLongPress: () {
                taskdata.deleteTask(index);
              },
              child: TasksTitle(
                taskTitle: task.name,
                isChecked: task.isDone,
                toggleCheckBoxState: (bool check) {
                  taskdata.updateTask(task);
                },
              ),
            );
          },
          itemCount: taskdata.taskCount,
        );
      },
    );
  }
}
