import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Center(
          child: MaterialButton(
            onPressed: (){
              Get.back();
            },
            child: Text("Home",style: TextStyle(fontSize: 20),),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            color: Colors.grey.shade300,
            minWidth: 160,
            height: 60,
          ),
        ),
      ),
    );
  }
}
