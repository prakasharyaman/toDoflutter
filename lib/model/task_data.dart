import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';
class TasksData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'buy milk'),

  ];
int get taskCount{
  return _tasks.length;
}
void addTask(String newTaskTitle){
  _tasks.add(Task(name: newTaskTitle));
  notifyListeners();
}
UnmodifiableListView<Task> get tasks{
  return UnmodifiableListView(_tasks);
}
void UpdateTask(Task task){
  task.toggleDone();
  notifyListeners();
}
deleteTask(Task task){
  _tasks.remove(task);
  notifyListeners();
}
}