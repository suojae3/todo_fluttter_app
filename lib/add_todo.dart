

import 'package:flutter/material.dart';



// 8. AddTodoScreen is a StatelessWidget where users can add new to-do items
class AddTodoScreen extends StatelessWidget {
  // _controller is a TextEditingController which keeps track of the text in the TextField
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Todo')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(

          children: [
            // TextField is where users can enter the title of a new to-do item
            TextField(controller: _controller),

            // ElevatedButton is a styled button widget
            ElevatedButton(
              child: Text('Add'),

              // onPressed pops the screen and passes the entered text back to the previous screen
              onPressed: () {
                Navigator.pop(context, _controller.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}