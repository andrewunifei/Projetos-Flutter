import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final List<Task> tasks;
  final TextEditingController inputController;
  final Function addCallBack;
  
  const AddTaskScreen({
    Key? key,
    required this.tasks,
    required this.inputController,
    required this.addCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0)
          ),
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: "Add task",
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                onPressed: (){
                  addCallBack(inputController.text);
                },
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    const BorderSide(width: 1, color: Colors.lightBlueAccent)
                  )
                ),
                child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.lightBlueAccent,
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
