import 'package:flutter/material.dart';
import 'package:student2/screens/task_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
