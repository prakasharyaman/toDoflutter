import 'package:flutter/material.dart';
import 'screens/taskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task.dart';
import 'model/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TasksData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
