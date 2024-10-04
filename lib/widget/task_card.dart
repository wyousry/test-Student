// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'sub_task_card.dart';

class TaskCard extends StatefulWidget {
  final String title;
  final String assetImage;
  final List<SubTaskCard> subTasks;
  final VoidCallback onTap;

  TaskCard({
    required this.title,
    required this.assetImage,
    required this.subTasks,
    required this.onTap,
  });

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  widget.assetImage,
                  width: 60,
                  height: 60,
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                  width: 10,
                ),
              ],
            ),
            title: Center(
              child: Text(widget.title,
                  style:
                      TextStyle(fontSize: 32, fontWeight: FontWeight.normal)),
            ),
            trailing: IconButton(
              icon: Icon(isExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
            onTap: widget.onTap,
          ),
          if (isExpanded)
            Column(
              children: widget.subTasks,
            ),
        ],
      ),
    );
  }
}
