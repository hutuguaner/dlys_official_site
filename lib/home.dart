import 'package:dlys_official_site/getxcontroller/home_getx_controller.dart';
import 'package:dlys_official_site/page/page_about.dart';
import 'package:dlys_official_site/page/page_shouye.dart';
import 'package:dlys_official_site/page/page_tools.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return GetBuilder(builder: (HomeGetxController controller) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: List.generate(
              titles.length,
              (index) => MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        controller.setBodyCheckedIndex(index);
                      },
                      child: Container(
                        color: (controller.bodyCheckedIndex == index)
                            ? (Colors.amber)
                            : (Colors.transparent),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Center(
                            child: Text(
                              titles.elementAt(index),
                              style: GoogleFonts.abhayaLibre(
                                  textStyle: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
          title: Text(
            '糊涂官儿',
            style: TextStyle(
                fontSize: 18, color: Theme.of(context).bottomAppBarColor),
          ),
        ),
        body: SingleChildScrollView(
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: pages.elementAt(controller.bodyCheckedIndex),
          ),
        ),
      );
    });
  }
}

List<String> titles = ['首页', '工具', '关于我们'];

List<Widget> pages = [PageShouye(), PageTools(), PageAbout()];
