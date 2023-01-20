import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';
import 'package:todoey_flutter/provider/provider_controller.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {

  const TodoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderController>(
      builder: (_, provider, child) {
        return ListView.builder(
          itemBuilder: (context, index) => TaskTile(
            title: provider.tasks[index].title,
            value: provider.tasks[index].isDone,
            onChanged: (bool? toggle){
              provider.updateTask(index);
            },
            onLongPress: (){
              provider.removeTask(index);
            },
          ),
          itemCount: provider.taskListLength,
        );
      }
    );
  }
}