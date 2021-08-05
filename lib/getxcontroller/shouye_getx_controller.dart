
import 'package:get/get.dart';

class ShouyeGetxController extends GetxController{

  double contentTextSize = 20;
  double contentHoverTextSize = 30;
  int currHoverIndex = -1;//
  void setContentHoverIndex(int index){
    currHoverIndex = index;
    update();
  }

}