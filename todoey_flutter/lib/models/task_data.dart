import 'package:flutter/foundation.dart';
import 'tasks.dart';
import 'dart:collection';

class TasksData extends ChangeNotifier {
  List<Task> _task = [];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(Task newTask) {
    _task.add(newTask);
    notifyListeners();
  }

  void updateTask(Task newTask) {
    newTask.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _task.removeAt(index);
    notifyListeners();
  }
}
