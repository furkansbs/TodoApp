import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todoo/constants/color.dart';
import 'package:todoo/headeritem.dart';
import 'package:todoo/screens/add_new_task.dart';
import 'package:todoo/screens/home.dart';
import 'package:todoo/todoitem.dart';

void main(){
  runApp(TodoList());
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}



class _TodoListState extends State<TodoList> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

