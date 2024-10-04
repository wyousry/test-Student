// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:student2/screens/attached_files.dart';
import 'package:student2/widget/appbar_tasks_done.dart';

class TaskDetailPage extends StatelessWidget {
  final String taskName;
  final String startDate;
  final String deadline;

  TaskDetailPage(
      {required this.taskName,
      required this.startDate,
      required this.deadline});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
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
                          Text(
                            'Task Name: $taskName',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Start at: $startDate',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Deadline at: $deadline',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(height: 80),
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor:
                                    Color.fromARGB(255, 15, 171, 125),
                                minimumSize: Size(300, 45.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 15),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SeeFilePage(
                                            taskName: 'Files',
                                          )),
                                );
                              },
                              child: Text('See Files'),
                            ),
                          ),
                          SizedBox(height: 40),
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 4,
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.white,
                                minimumSize: Size(212, 42),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 15),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              onPressed: () {},
                              child: Text('Solution'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 6,
                        foregroundColor: Colors.white,
                        backgroundColor: Color.fromARGB(255, 15, 171, 125),
                        minimumSize: Size(300, 45.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Submit'),
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
