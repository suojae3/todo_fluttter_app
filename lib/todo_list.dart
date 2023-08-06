import 'package:flutter/material.dart';
import 'package:todo/model.dart';
import 'package:todo/add_todo.dart';



class TodoListScreen extends StatefulWidget {
  
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}


// 6. _TodoListScreenState is where the mutable state for TodoListScreen is held
class _TodoListScreenState extends State<TodoListScreen> {

  // _todoItems is the list of to-do items

  final List<TodoItem> _todoItems = [];

  // _addTodoItem is a method that adds a to-do item to the list
  void _addTodoItem(String title) {
    setState(() {
      _todoItems.add(TodoItem(title: title));
    });
  }

  // _deleteTodoItem is a method that removes a to-do item from the list
  void _deleteTodoItem(int index) {
    setState(() {
      _todoItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {

    // 7. Scaffold is a top-level widget that provides basic structure for the app
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),

      // ListView.builder creates a list of items
      body: ListView.builder(


        itemCount: _todoItems.length,

        // itemBuilder gives the UI for each item in the list
        itemBuilder: (context, index) => ListTile(

          title: Text(_todoItems[index].title),

          trailing: IconButton(
            icon: Icon(Icons.delete),
            // onPressed deletes the corresponding to-do item when the button is pressed
            onPressed: () => _deleteTodoItem(index),
          ),
        ),
      ),
      // FloatingActionButton is the round button with the '+' icon
      floatingActionButton: FloatingActionButton(

        child: const Icon(Icons.add),
        // onPressed navigates to the AddTodoScreen when the button is pressed
        onPressed: () async {
          final newTitle = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTodoScreen()),
          );

          // if the newTitle is not null, add the new to-do item
          if (newTitle != null) {
            _addTodoItem(newTitle);
          }
        },
      ),
    );
  }
}