import 'package:dlys_official_site/getxcontroller/shouye_getx_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageShouye extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageShouyeState();
  }
}

class PageShouyeState extends State<PageShouye> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder(
      builder: (ShouyeGetxController shouyeGetxController) {
        return Container(
          child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: contents.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemBuilder: (BuildContext bctx, int index) {
                return MouseRegion(
                  onEnter: (enterEvent) {
                    shouyeGetxController.setContentHoverIndex(index);
                  },
                  onExit: (exitEvent) {
                    shouyeGetxController.setContentHoverIndex(-1);
                  },
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(5, 5),
                                color: Color.fromARGB(
                                    100, index * 70, index * 50, index * 30))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(
                              100, index * 30, index * 50, index * 70)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Center(
                          child: Text(
                            contents.elementAt(index),
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: (shouyeGetxController.currHoverIndex ==
                                      index)
                                  ? (shouyeGetxController.contentHoverTextSize)
                                  : (shouyeGetxController.contentTextSize),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        );
      },
      init: ShouyeGetxController(),
    );
  }
}

List<String> contents = [
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
  'animated_text_kit: ^4.2.1',
];
