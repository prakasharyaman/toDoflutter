import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/main.dart';
class Task{
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});
  void toggleDone() {
    isDone = !isDone;
  }
}
