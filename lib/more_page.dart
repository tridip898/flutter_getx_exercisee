import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name: "+Get.arguments[0]['name'],style: TextStyle(fontSize: 25),),
              Text("Age: "+Get.arguments[1]['age'],style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
      ),
    );
  }
}
