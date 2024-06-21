import 'package:flutter/material.dart';
import 'package:todo_list_flutter_challenge/presentation/view/todo_list_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListPage(),
    ),
  );
}
