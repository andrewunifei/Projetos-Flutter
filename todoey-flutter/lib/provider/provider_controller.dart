import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class ProviderController extends ChangeNotifier {
  final List<Task> _tasks = [];

  void addTask(String title){
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void removeTask(index){
    _tasks.remove(_tasks[index]);
    notifyListeners();
  }

  void updateTask(index){
    _tasks[index].toggleDone();
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView<Task>(_tasks);
  }

  int get taskListLength {
    return _tasks.length;
  }
}