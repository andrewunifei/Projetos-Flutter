import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool? value;
  final Function(bool?) onChanged;

  const TaskTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.lightBlueAccent,
      title: Text(
          title,
          style: TextStyle(
              decoration: value != null && value == true ? TextDecoration.lineThrough : TextDecoration.none
          ),
      ),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}