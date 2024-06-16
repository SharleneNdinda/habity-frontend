import "package:flutter/material.dart";

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({super.key, 
  required this.taskName,
  required this.taskCompleted,
  required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 15.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.brown[600],
          borderRadius: BorderRadius.circular(12),
          ),
        child: Row(
          children: [
            // chieckbox
            Checkbox(value: taskCompleted, onChanged: onChanged, activeColor: Colors.black,),
            // task name
            Text("Make a tutorial",),
          ],
        ),
      ),
    );
  }
}