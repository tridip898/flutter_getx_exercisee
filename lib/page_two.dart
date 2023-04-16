import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  PageTwo({Key? key}) : super(key: key);
  var data=Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 27
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name: "+data[0]['name'],style: TextStyle(fontSize: 20),),
              Text("Age: "+data[1]['age'],style: TextStyle(fontSize: 20),),
              Text("Specialist: "+data[2]['specialist'],style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}