import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.value,
  }) : super(key: key);

  final bool? value;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: (bool? toggle){
        // setState(() {
        //   value = toggle;
        // });
      },
      title: const Text('Testando em um pão épico!'),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}