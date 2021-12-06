import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_app/utils_view.dart';

class CreateTodoView extends StatefulWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  State<CreateTodoView> createState() => _CreateTodoViewState();
}

class _CreateTodoViewState extends State<CreateTodoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create new Todo'),
      ),
      body: Form(
          child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
                label: const Text('Title'),
                hintText: 'Please input your Title here',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: CostomBlue))),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            keyboardType: TextInputType.multiline,
            textCapitalization: TextCapitalization.sentences,
            maxLines: 5,
            decoration: InputDecoration(
                label: const Text('Description'),
                hintText: 'Please enter a description her',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: CostomBlue))),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  onTap: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate:
                            DateTime.now().add(const Duration(days: 365)));
                  },
                  keyboardType: TextInputType.datetime,
                  textCapitalization: TextCapitalization.sentences,
                  maxLines: 1,
                  decoration: InputDecoration(
                    label: const Text('Date'),
                    hintText: 'Please select a date',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: CostomBlue),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: TextFormField(
                onTap: () {
                  showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                },
                keyboardType: TextInputType.datetime,
                textCapitalization: TextCapitalization.sentences,
                maxLines: 1,
                decoration: InputDecoration(
                    label: const Text('Time'),
                    hintText: 'Please select a time',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: CostomBlue),
                    )),
              )),
            ],
          ),
         const SizedBox(
            height: 35,
          ),
          TextButton(
            onPressed: () {},
            child:const Text(
              'Create Todo',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
                padding: EdgeInsets.all(16), backgroundColor: CostomBlue),
          )
        ],
      )),
    );
  }
}
