// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonCollection extends StatelessWidget {
  final VoidCallback onAdd;
  final VoidCallback onReset;
  final VoidCallback onCalculate;

  ButtonCollection(
      {super.key,
      required this.onAdd,
      required this.onReset,
      required this.onCalculate});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
            onPressed: onCalculate,
            child: Text("Calculate"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(5.0), // Medium border radius
              ),
            )),
        ElevatedButton(
            onPressed: onAdd,
            child: Text("Add Course"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(5.0), // Medium border radius
              ),
            )),
        ElevatedButton(
            onPressed: onReset,
            child: Text("Reset"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(5.0), // Medium border radius
              ),
            )),
      ],
    );
  }
}
