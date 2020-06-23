import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheckBoxState;
  final String taskTitle;
  TasksTitle({this.isChecked, this.toggleCheckBoxState, this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleCheckBoxState,
      ),
    );
  }
}
