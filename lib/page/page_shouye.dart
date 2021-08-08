import 'package:dlys_official_site/getxcontroller/shouye_getx_controller.dart';
import 'package:dlys_official_site/page/page_shouye_detail.dart';
import 'package:dlys_official_site/page/page_shouye_list.dart';
import 'package:dlys_official_site/page/subpage/page_animated_text.dart';
import 'package:dlys_official_site/page/subpage/page_convex_bottom_bar.dart';
import 'package:dlys_official_site/page/subpage/page_easy_web_view.dart';
import 'package:dlys_official_site/page/subpage/page_shimmer.dart';
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
        return (shouyeGetxController.currSelectedIndex == -1)
            ? (PageShouyeList())
            : (PageShouyeDetail());
      },
      init: ShouyeGetxController(),
    );
  }
}

List<String> contents = [
  'convex_bottom_bar',
  'easy_web_view',
  'animated_text_kit',
      'shimmer'
];
List<Widget> subpages = [
  PageConvexBottomBar(),
  PageEasyWebView(),
  PageAnimatedText(),
  PageShimmer(),
];
