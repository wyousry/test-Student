// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:student2/screens/task_page.dart';

class AppBarTasks extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  AppBarTasks({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 70,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 15, 171, 125),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 5,
            // ignore: duplicate_ignore
            // ignore: prefer_const_constructors
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TaskPage()),
                    );
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.notifications_none),
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
