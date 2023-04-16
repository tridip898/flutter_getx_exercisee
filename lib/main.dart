import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise/course_page.dart';
import 'package:flutter_getx_exercise/more_page.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/course-page', page: ()=>CoursePage()),
        GetPage(name: '/more-page', page: ()=>MorePage())
      ],
    );
  }
}

