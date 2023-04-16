import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Course page",style: TextStyle(fontSize: 25),),
              Text("Name: ${Get.arguments['name']}",style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
      ),
    );
  }
}
