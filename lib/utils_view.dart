import 'package:flutter/material.dart';

Color CostomBlue = Color.fromRGBO(37, 43, 103, 1);

Color dateColor(String date) {
  switch (date) {
    case 'Yesterday':
      return Colors.pinkAccent;
    case 'today':
      return Colors.blueAccent;
    default:
      return CostomBlue;
  }
}
