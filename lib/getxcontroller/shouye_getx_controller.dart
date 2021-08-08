import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShouyeGetxController extends GetxController {
  double contentTextSize = 20;
  double contentHoverTextSize = 30;
  int currHoverIndex = -1; //
  void setContentHoverIndex(int index) {
    currHoverIndex = index;
    update();
  }

  //
  int currSelectedIndex = -1; //-1 代表在列表页面，其他数字代表在对应的索引的详情页面
  void setSelectedIndex(int index) {
    currSelectedIndex = index;
    update();
  }

  //
  Color detailBgColor = Colors.white;

  void setDetailBgColor(Color color) {
    detailBgColor = color;
    update();
  }
}
