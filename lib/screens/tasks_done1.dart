// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:student2/widget/appbar_tasks_done.dart';
import 'package:student2/widget/task_card_done.dart';

class TasksDone1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            padding: EdgeInsets.only(top: 120, right: 10, left: 10),
            itemCount: 11,
            itemBuilder: (context, index) {
              return TaskCardDone(
                title: "Task${11 - index}",
                assetImage: 'assets/images/strength.png',
              );
            },
          ),
          Positioned(
            top: 30,
            left: MediaQuery.of(context).size.width * 0.05,
            child: AppBarTasks(
              title: "Technical",
            ),
          ),
        ],
      ),
    );
  }
}
