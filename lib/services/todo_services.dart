import 'dart:convert';

import 'package:http/http.dart';

class TodoServices {
  Future<Response> getAllTodoRequest() async {
    return await get(
        Uri.parse('https://shrouded-gorge-69801.herokuapp.com/todos'));
  }

  Future<Response> createTodoRequest(
      {required String title,
      required String description,
      required String dateTime}) async {
    Map<String, String> header = {'Content-Type': 'application /json'};

    Map<String, String> body = {
      "title": title,
      "description": description,
      "date_time": dateTime
    };
    return await post(
        Uri.parse('https://shrouded-gorge-69801.herokuapp.com/todos'),
        body: jsonEncode(body),
        headers: header);
  }

  Future<Response> updateTodoRequest(
      {required bool status, required Stringid}) async {
    Map<String, bool> body = {"status": status};
    Map<String, String> header = {"Content-Type": "application/json"};

     return await patch(Uri.parse('https://shrouded-gorge-69801.herokuapp.com/todos'),
        body: jsonEncode(body), headers: header);
  }

  Future<Response> deleteTodoRequest(String id) async {
    return await delete(
        Uri.parse('https://shrouded-gorge-69801.herokuapp.com/todos/$id'));
        
  }
}
