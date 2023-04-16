import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise/page_one.dart';
import 'package:flutter_getx_exercise/page_two.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            //upper container
            Container(
              height: height * .22,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50))),
              child: Text(
                "GetX",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            //search box
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black54, width: 1.5)),
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    hintText: "Search ...",
                    hintStyle:
                        TextStyle(fontSize: 18, color: Colors.grey.shade600)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //first getx text
            RichText(
                text: TextSpan(children: [
              WidgetSpan(
                  child: GestureDetector(
                    onTap: () => Get.to(() => PageOne()),
                child: Text("First GetX",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600)),
              )),
            ])),

            SizedBox(
              height: 10,
            ),
            //explore getx
            RichText(
                text: TextSpan(children: [
              WidgetSpan(
                  child: GestureDetector(
                onTap: () => Get.to(
                      () => PageTwo(),
                 arguments: [
                   {'name':'Tridip bhowmik'},
                   {'age':'Twenty four'},
                   {'specialist':'Mobile Application Developer'}
                 ]
                    ),
                child: Text("Explore GetX",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600)),
              )),
            ])),

            SizedBox(
              height: 70,
            ),
            //text
            Text(
              "Navigate named routes",
              style: TextStyle(fontSize: 28, color: Colors.grey.shade800),
            ),
            SizedBox(
              height: 20,
            ),
            //lower container and button
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Get.toNamed('/course-page',arguments: {
                          'name':'Tridip bhowmik'
                        });
                      },
                      child: Text(
                        "Course",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade600),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.grey.shade200,
                      minWidth: 150,
                      height: 60,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Get.toNamed('/more-page',arguments: [
                          {'name':'Tridip Bhowmik'},
                          {'age':24.toString()}
                        ]);
                      },
                      child: Text(
                        "More",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade600),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.grey.shade200,
                      minWidth: 150,
                      height: 60,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
