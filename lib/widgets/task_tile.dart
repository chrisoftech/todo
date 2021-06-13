import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a list.',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckedBox(isChecked, (bool checkboxState) {
        setState(() {
          isChecked = checkboxState;
        });
      }),
    );
  }
}

class TaskCheckedBox extends StatelessWidget {
  TaskCheckedBox( this.checkboxState,this.toggleChangeState);
  final bool checkboxState=true;
  final Function toggleChangeState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleChangeState,
    );
  }
}
