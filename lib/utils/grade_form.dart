// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class GradeForm extends StatelessWidget {
  final int rows;
  List<TextEditingController> courseControllers;
  List<TextEditingController> gradeControllers;
  List<TextEditingController> creditControllers;

  GradeForm(
      {super.key,
      required this.rows,
      required this.courseControllers,
      required this.gradeControllers,
      required this.creditControllers});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rows,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: TextField(
                controller: courseControllers[index],
                decoration: InputDecoration(
                  hintText: "Course Name",
                  alignLabelWithHint: true,
                ),
                textAlign: TextAlign.center,
              )),
              Expanded(
                  child: TextField(
                controller: gradeControllers[index],
                decoration: InputDecoration(
                  hintText: "X",
                  alignLabelWithHint: true,
                ),
                textAlign: TextAlign.center,
              )),
              Expanded(
                  child: TextField(
                controller: creditControllers[index],
                decoration: InputDecoration(
                  hintText: "0",
                  alignLabelWithHint: true,
                ),
                textAlign: TextAlign.center,
              )),
            ],
          ),
        );
      },
    );
  }
}
