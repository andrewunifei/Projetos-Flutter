import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  bool? value = false;
  List<CheckboxListTile> tasks = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(value: value),
      ],
    );
  }
}