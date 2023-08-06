

// 1. Import the Flutter Material package
import 'package:flutter/material.dart';
import 'package:todo/todo_list.dart';

/*
====================================================================================
====================================================================================
*/

// 2. The main function is the entry point for a Flutter app
void main() {
  runApp(MyApp());
}

// 3. MyApp is the root widget of the application
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      
      // The home property takes a widget which is the main UI of the app
      home: TodoListScreen(),
    );
  }
}

