

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todoo/constants/color.dart';
import 'package:todoo/constants/tasktype.dart';
import 'package:todoo/main.dart';
import 'package:todoo/model/task.dart';
import 'package:todoo/screens/add_new_task.dart';
import 'package:todoo/todoitem.dart';

import '../headeritem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 // List<String> todo = ["Study Lessons", "Run 5k", "Go to party"];
 // List<String> completed = ["Game meetup", "Take out trash"];

  List<Task> todo = [
   Task(
       type: TaskType.note,
       title: "Study Lessons",
       description: "Study COMP117",
       isCompleted: false,
   ),
    Task(
        type: TaskType.calendar,
        title: "Go to party",
        description: "Attend to party",
        isCompleted: false,
    ),
    Task(
        type: TaskType.contest,
        title: "Run 5k",
        description: "Run 5 kilometers",
        isCompleted: false,
    ),
  ];

  List<Task> completed = [
    Task(
      type: TaskType.calendar,
      title: "Go to party",
      description: "Attend to party",
      isCompleted: false,
    ),
    Task(
      type: TaskType.contest,
      title: "Run 5k",
      description: "Run 5 kilometers",
      isCompleted: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(backgroundColor),
          body: Column(
            children: [
              Header(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,10),
                  child: SingleChildScrollView(
                      child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: todo.length,
                        itemBuilder: (context, index) {
                          return TodoItem(task: todo[index]);
                        },
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Completed", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,10),
                  child: SingleChildScrollView(
                      child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: completed.length,
                        itemBuilder: (context, index) {
                          return TodoItem(task: completed[index]);
                        },
                      )
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddNewTaskScreen(),));
                  },
                  child: Text("Add New Task"))
            ],
          ),
        ),
      ),
    );
  }
}
