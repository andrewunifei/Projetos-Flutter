import 'package:flutter/material.dart';
import 'package:todoey_flutter/provider/provider_controller.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  // List<Task> tasks = [];
  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                    child:Container(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(
                        // tasks: tasks,
                        inputController: inputController,
                        // addCallBack: (title){
                        //   setState(() {
                        //     tasks.add(Task(title: title));
                        //   });
                        //  Navigator.pop(context);
                        //},
                      ),
                    )
                )
            );
          },
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Todoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${context.watch<ProviderController>().tasks.length} tasks',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
                ),
                child: TodoList(
                  tasks: context.watch<ProviderController>().tasks,
                ),
              ),
            ),
          ],
        ),
      );
  }
}


