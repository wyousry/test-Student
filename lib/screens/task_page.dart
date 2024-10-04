// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:student2/screens/tasks_done1.dart';
import 'package:student2/screens/tasks_done2.dart';
import 'package:student2/screens/tasks_done3.dart';
import 'package:student2/screens/tasks_done4.dart';
import 'package:student2/widget/custom_appbar.dart';
import 'package:student2/widget/sub_task_card.dart';
import 'package:student2/widget/task_card.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(top: 120, right: 10, left: 10),
            children: [
              TaskCard(
                title: "Technical",
                assetImage: 'assets/images/laptop.png',
                subTasks: [
                  SubTaskCard(title: "Task 14", date: "27/9/2024"),
                  SubTaskCard(title: "Task 13", date: "25/9/2024"),
                ],
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TasksDone1()));
                },
              ),
              TaskCard(
                title: "Soft Skills",
                assetImage: 'assets/images/soft-skills.png',
                subTasks: [
                  SubTaskCard(title: "Task 4", date: "20/9/2024"),
                ],
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TasksDone2()));
                },
              ),
              TaskCard(
                title: "English",
                assetImage: 'assets/images/alphabet.png',
                subTasks: [
                  SubTaskCard(title: "Task 6", date: "19/9/2024"),
                ],
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TasksDone3()));
                },
              ),
              TaskCard(
                title: "Freelance",
                assetImage: 'assets/images/telecommuting.png',
                subTasks: [
                  SubTaskCard(title: "Task 1", date: "15/9/2024"),
                ],
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TasksDone4()));
                },
              ),
            ],
          ),
          Positioned(
            top: 30,
            left: MediaQuery.of(context).size.width * 0.05,
            child: CustomAppBar(
              title: "Tasks",
            ),
          ),
        ],
      ),
    );
  }
}
