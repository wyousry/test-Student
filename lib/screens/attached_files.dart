// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:student2/widget/appbar_tasks_done.dart';

class SeeFilePage extends StatelessWidget {
  final String taskName;

  SeeFilePage({
    required this.taskName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Positioned(
            top: 30,
            left: MediaQuery.of(context).size.width * 0.05,
            child: AppBarTasks(
              title: taskName,
            ),
          ),
          SizedBox(height: 15),
          Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    width: 340,
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/image.png"),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.folder_open_outlined,
                                  size: 24,
                                ),
                                Text(
                                  '   Presentation',
                                  style: TextStyle(fontSize: 24),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )))
        ]),
      ),
    ]));
  }
}
