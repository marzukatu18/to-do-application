import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_app/views/create_todo.dart';
import 'package:todo_app/views/todo_tile_view.dart';
import 'package:todo_app/utils_view.dart';
import 'create_todo.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
      body: ListView.separated(
        itemBuilder: (context, index) {
          return const TodoTileView();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 15,
          );
        },
        itemCount: 5,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const CreateTodoView();
          }));
        },
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
              child: InkWell(
                onTap: () {
                  showBarModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return CompletedTodoWidget();
                      });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: CostomBlue,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Completed',
                          style: TextStyle(
                            color: CostomBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: CostomBlue,
                        )
                      ],
                    ),
                    const Spacer(),
                    Text(
                      '24',
                      style: TextStyle(color: CostomBlue),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CompletedTodoWidget extends StatelessWidget {
  const CompletedTodoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.check_circle_outline,
          color: CostomBlue,
        ),
        title: const Text(
          'Plan trip to finland',
        ),
        subtitle: const Text(
          'join us as we celebrate sarah ein birthday',
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.notifications,
              color: CostomBlue,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'yesterday',
              style: TextStyle(color: CostomBlue),
            ),
          ],
        ),
      ),
    );
  }
}
