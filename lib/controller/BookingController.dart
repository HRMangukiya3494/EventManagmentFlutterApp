import 'package:get/get.dart';

class BookingController extends GetxController {
  var selectedIndex = 0.obs;

  void selectIndex(int index) {
    selectedIndex.value = index;
  }
}