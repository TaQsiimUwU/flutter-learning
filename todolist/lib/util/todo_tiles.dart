import 'package:flutter/material.dart';

class TodoTiles extends StatelessWidget {
  final String taskname;
  final bool isChecked;

  final Function(bool?)? onChanged;

  const TodoTiles({
    super.key,
    required this.taskname,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Container(
        padding: EdgeInsets.all(23),
        decoration: BoxDecoration(
          color: Color.fromARGB(141, 3, 219, 222),
          borderRadius: BorderRadius.circular(16),
        ),

        child: Row(
          children: [
            //checkbox
            Checkbox(value: isChecked, onChanged: onChanged),

            //task name
            Text(taskname),
          ],
        ),
      ),
    );
  }
}
