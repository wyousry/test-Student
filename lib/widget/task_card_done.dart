// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskCardDone extends StatefulWidget {
  final String title;
  final String assetImage;

  TaskCardDone({
    required this.title,
    required this.assetImage,
  });

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCardDone> {
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
                    width: 50,
                    height: 50,
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
                        TextStyle(fontSize: 24, fontWeight: FontWeight.normal)),
              ),
              trailing: Icon(
                Icons.done_all_outlined,
                color: Color.fromARGB(255, 15, 171, 125),
              )),
        ],
      ),
    );
  }
}
