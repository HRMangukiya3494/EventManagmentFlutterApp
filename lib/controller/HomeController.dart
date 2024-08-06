import 'package:get/get.dart';

class HomeController extends GetxController {
  var locationText = ''.obs;
  void updateLocationText(String text) {
    locationText.value = text;
  }
  bool get isTyping => locationText.value.isNotEmpty;
}