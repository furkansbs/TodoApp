import 'package:flutter/material.dart';

class AddWidgets extends StatelessWidget {
  const AddWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text("Date"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(decoration: InputDecoration(filled: true,fillColor: Colors.white)),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text("Time"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(decoration: InputDecoration(filled: true, fillColor: Colors.white),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
