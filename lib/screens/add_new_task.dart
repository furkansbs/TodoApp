

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todoo/add_new_widgets.dart';
import 'package:todoo/constants/color.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight/10,
                color: Color(0xFF4A3780),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.close,color: Colors.white,size: 40,)),
                    Expanded(
                        child: Text("Add New Task",textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,fontSize: 21),
                        ),
                        ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Task Title"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: TextField(
                    decoration: InputDecoration(filled: true,fillColor: Colors.white),)),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Category"),
                       GestureDetector(
                        onTap: (){
                         ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(
                             duration: Duration(milliseconds: 300),
                               content: Text("Category selected"))
                         );
                        },
                        child: Image.asset("lib/assets/images/category_1.png"),
                    ),
                    GestureDetector(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                duration: Duration(milliseconds: 300),
                                content: Text("Category selected"))
                        );
                      },
                      child: Image.asset("lib/assets/images/category_2.png"),
                    ),
                    GestureDetector(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                duration: Duration(milliseconds: 300),
                                content: Text("Category selected"))
                        );
                      },
                      child: Image.asset("lib/assets/images/category_3.png"),
                    ),
                  ],
                ),
              ),
              AddWidgets(),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Notes"),
              ),
              SizedBox(
                height: 200,
                  child: TextField(
                    expands: true,
                    maxLines: null,
                    decoration: InputDecoration(filled: true, fillColor: Colors.white,isDense: true),)),
              ElevatedButton(onPressed: (){}, child: Text("Save"),)
            ],
          ),
        )
      ),
    );
  }
}
