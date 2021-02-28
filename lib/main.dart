import 'package:flutter/material.dart';
import 'package:todos_tutorial/task.dart';
import 'package:todos_tutorial/todoCreate.dart';
import 'package:todos_tutorial/todoList.dart';

void main() => runApp(TODOApp());

class TODOApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TODO();
  }
}

class TODO extends StatefulWidget {
  @override
  _TODOState createState() => _TODOState();
}

class _TODOState extends State<TODO> {
  final List<Task> tasks = [];

  void onTaskCreated(String name) {
    setState(() {
      tasks.add(Task(name));
    });
  }

  void onTaskToggle(Task task) {
    setState(() {
      task.setCompleted(!task.isCompleted());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => TODOList(tasks: tasks, onToggle: onTaskToggle),
        '/create': (context) => TODOCreate(onCreate: onTaskCreated,)
      },
      title: "TODO app",
    );
  }
}




