import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: (bool? toggle){
         setState(() {
           value = toggle;
         });
      },
      activeColor: Colors.lightBlueAccent,
      title: Text(
          'Testando em um pão épico!',
          style: TextStyle(
              decoration: value != null && value == true ? TextDecoration.lineThrough : TextDecoration.none
          ),
      ),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}