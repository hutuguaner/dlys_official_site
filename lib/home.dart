import 'package:dlys_official_site/getxcontroller/home_getx_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  var ctrl = Get.put(HomeGetxController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder(builder: (HomeGetxController controller){
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: (){
                  controller.setBodyCheckedIndex(0);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      '首页',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: (){
                  controller.setBodyCheckedIndex(1);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      '工具',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: (){
                  controller.setBodyCheckedIndex(2);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      '联系我们',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
          title: Text(
            '糊涂官儿',
            style: TextStyle(
                fontSize: 18, color: Theme.of(context).bottomAppBarColor),
          ),
        ),
        body: IndexedStack(
          index: controller.bodyCheckedIndex,
          children: [
            Container(
              color: Colors.deepPurpleAccent,
              child: Center(
                child: Text(
                  '首页',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              child: Center(
                child: Text(
                  '工具',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              child: Center(
                child: Text(
                  '联系我们',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
