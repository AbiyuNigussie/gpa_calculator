// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gpa_calculator/pages/about_us_page.dart';
import 'package:gpa_calculator/utils/button_collection.dart';
import 'package:gpa_calculator/utils/grade_form.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  final List<List> allRows = [];
  Map<String, double> grading = {
    "A+": 4.0,
    "A": 4.0,
    "A-": 3.75,
    "B+": 3.5,
    "B": 3.0,
    "B-": 2.75,
    "C+": 2.5,
    "C": 2.0,
    "C-": 1.75,
    "D": 1.0,
    "F": 0.0
  };

  double calculatedGPA = 0.0;

  // TextEditingController courseController = TextEditingController();
  // TextEditingController gradeController = TextEditingController();
  // TextEditingController creditController = TextEditingController();

  List<TextEditingController> courseControllers = [];
  List<TextEditingController> gradeControllers = [];
  List<TextEditingController> creditControllers = [];
  int rows = 0;

  void addRow() {
    setState(() {
      rows++;
      courseControllers.add(TextEditingController());
      gradeControllers.add(TextEditingController());
      creditControllers.add(TextEditingController());
    });
  }

  void resetRow() {
    setState(() {
      rows = 0;
      courseControllers.clear();
      gradeControllers.clear();
      creditControllers.clear();
      calculatedGPA = 0.0;
    });
  }

  void calculateResult() {
    double totalGradePoints = 0.0;
    int totalCredits = 0;
    for (int i = 0; i < rows; i++) {
      String grade = gradeControllers[i].text.toUpperCase();
      int credits = int.tryParse(creditControllers[i].text) ?? 0;
      double gradeValue = grading[grade] ?? 0.0;

      totalGradePoints += gradeValue * credits;
      totalCredits += credits;
    }
    if (totalCredits > 0) {
      setState(() {
        calculatedGPA = totalGradePoints / totalCredits;
      });
    }
    allRows.add([
      courseControllers.map((controller) => controller.text).toList(),
      gradeControllers.map((controller) => controller.text).toList(),
      creditControllers.map((controller) => controller.text).toList(),
    ]);

    print(calculatedGPA);
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            backgroundColor: Colors.lightGreen[800],
            title: Text(
              "GPA Calculator",
              style: TextStyle(color: Colors.white),
            ),
            leading: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.calculate,
                ),
                color: Colors.white,
                iconSize: 40,
              ),
            )),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightGreen[800],
                ),
                child: Text(
                  'Navigation',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About Us'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 125,
                  width: double.infinity,
                  color: Colors.lightGreen[500],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your GPA is",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        calculatedGPA.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Course",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      "Grade",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      "Credits",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 475,
                child: GradeForm(
                  rows: rows,
                  courseControllers: courseControllers,
                  gradeControllers: gradeControllers,
                  creditControllers: creditControllers,
                ),
              ),
              ButtonCollection(
                onAdd: addRow,
                onReset: resetRow,
                onCalculate: calculateResult,
              )
            ],
          ),
        ));
  }
}
