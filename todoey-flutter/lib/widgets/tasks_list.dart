import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TodoList extends StatefulWidget {
  final List<Task> tasks;

  const TodoList({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  // List<Task> tasks;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
          title: widget.tasks[index].title,
          value: widget.tasks[index].isDone,
          onChanged: (bool? toggle){
            setState(() {
              widget.tasks[index].toggleDone();
            });
            },
      ),
      itemCount: widget.tasks.length,
    );
  }
}