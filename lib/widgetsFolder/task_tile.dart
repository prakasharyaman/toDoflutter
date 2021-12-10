import 'package:flutter/material.dart';
import 'package:todoey_flutter/main.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longpress;
  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback,this.longpress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longpress,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
