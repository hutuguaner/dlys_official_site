

import 'package:get/get.dart';

class HomeGetxController extends GetxController{
  int bodyCheckedIndex = 0;

  void setBodyCheckedIndex(int index){
    bodyCheckedIndex = index;
    update();
  }
}