import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class ProviderController extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(String title){
    tasks.add(Task(title: title));
    notifyListeners();
  }
}