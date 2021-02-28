import 'package:flutter/material.dart';

class TODOCreate extends StatefulWidget {

  final onCreate;

  TODOCreate({this.onCreate});

  @override
  _TODOCreateState createState() => _TODOCreateState();
}

class _TODOCreateState extends State<TODOCreate> {

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a task"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            controller: controller,
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'Enter name for your task'
            ),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          widget.onCreate(controller.text);
          Navigator.pop(context);
        },
      ),

    );
  }
}
