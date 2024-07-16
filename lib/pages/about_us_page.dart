// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[800],
        title: Text(
          "About Us",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                      'assets/developer.png'), // Add an image of the developer in the assets folder
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Abiyu Nigussie",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Web & Mobile App Developer",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "About the Developer",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen[800],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "I'm passionate Flutter developer with extensive experience in building beautiful and functional Web/Mobile applications. I specialize in crafting user-friendly interfaces and delivering seamless user experiences. With a keen eye for detail and a commitment to excellence, and continuously strives to stay updated with the latest trends and technologies in the mobile development industry.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[800],
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Text(
                "App Description",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen[800],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "This GPA Calculator app is designed to help students calculate their GPA quickly and accurately. The app allows users to input their courses, grades, and credits, and provides an easy-to-use interface to calculate the overall GPA. Whether you're a high school student or a college student, this app is a valuable tool to keep track of your academic performance.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[800],
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Text(
                "How to Use",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen[800],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "1. Open the app and you will see the GPA Calculator home screen.\n"
                "2. Enter the name of your course in the 'Course' field.\n"
                "3. Enter your grade for the course in the 'Grade' field (eg. A+, A, A-, B+, B, B-, C+, C, C-, D, F).\n"
                "4. Enter the number of credits for the course in the 'Credits' field.\n"
                "5. Click the 'Add' button to add the course to the list.\n"
                "6. Repeat steps 2-5 for all your courses.\n"
                "7. Click the 'Calculate' button to see your GPA.\n"
                "8. If you need to start over, click the 'Reset' button to clear all fields.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[800],
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Text(
                "Contact Information",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen[800],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.grey[700]),
                  SizedBox(width: 10),
                  Text(
                    "abiyunigussie7@gmail.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.web, color: Colors.grey[700]),
                  SizedBox(width: 10),
                  Text(
                    "www.abiyunigussie.github.io",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
