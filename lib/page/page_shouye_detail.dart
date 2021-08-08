import 'package:dlys_official_site/getxcontroller/shouye_getx_controller.dart';
import 'package:dlys_official_site/page/page_shouye.dart';
import 'package:dlys_official_site/page/page_shouye_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PageShouyeDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageShouyeDetailState();
  }
}

class PageShouyeDetailState extends State<PageShouyeDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder(builder: (ShouyeGetxController shouyeGetxController) {
      return Container(
        width: double.infinity,
        color: bgColors.elementAt(shouyeGetxController.currSelectedIndex),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: IconButton(
                  hoverColor: bgColors
                      .elementAt(shouyeGetxController.currSelectedIndex),
                  color: Colors.deepPurpleAccent,
                  onPressed: () {
                    shouyeGetxController.setSelectedIndex(-1);
                  },
                  icon: Icon(Icons.arrow_back)),
              alignment: Alignment.centerLeft,
            ),
            Hero(
                tag: 'tag_${shouyeGetxController.currSelectedIndex}',
                child: Text(
                  contents.elementAt(shouyeGetxController.currSelectedIndex),
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                      textStyle: TextStyle(
                        fontFamily: 'bold',
                        color: Colors.black54,
                        fontSize: 30,
                      )),
                )),
            subpages.elementAt(shouyeGetxController.currSelectedIndex),
          ],
        ),
      );
    });
  }
}
