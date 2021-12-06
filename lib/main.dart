import 'package:flutter/material.dart';
import 'package:todo_app/utils_view.dart';

import 'views/home_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.blue),
          titleTextStyle: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
      darkTheme: ThemeData(
        appBarTheme:  AppBarTheme(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: CostomBlue),
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const HomeView(),
    );
  }
}
