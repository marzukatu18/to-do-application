import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/utils_view.dart';

import '../utils_view.dart';

class TodoTileView extends StatelessWidget {
  const TodoTileView({Key? key,
    required this.todo,
  }) : super(key: key);
  final Datum todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/image.jpg'),
          ),
        ),
        title: const Text(
          'My Task',
        ),
        elevation: 0,
        actions: const [
          Icon(Icons.sort),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
               Icon(
                Icons.check_circle_outline,
                color: dateColor(todo.dateTime),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    todo.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(37, 43, 103, 1),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                   todo.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Row(
                children:  [
                  Icon(
                    Icons.notifications,
                    color: dateColor(todo.dateTime),
                  ),
                  Text(
                   todo.dateTime,
                    style: TextStyle(color: dateColor(todo.dateTime)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {},
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(37, 43, 103, 0.4),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: const [
                  Icon(Icons.check_circle_rounded),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
