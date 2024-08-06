import 'package:get/get.dart';

class NotificationsController extends GetxController {
  var isNotificationsEnabled = false.obs;
  void toggleNotifications(bool value) {
    isNotificationsEnabled.value = value;
  }
}