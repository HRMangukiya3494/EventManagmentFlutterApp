import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:http/http.dart' as http;
import 'package:event_management/views/routes/AppRoutes.dart';

class ResetPasswordController extends GetxController {
  var isLoading = false.obs;
  RxString newPassword = ''.obs;
  RxString confirmPassword = ''.obs;

  Future<void> resetPassword(String email) async {
    if (newPassword.value != confirmPassword.value) {
      Get.snackbar('Error', 'The passwords do not match.',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    isLoading(true);
    final url = 'https://customize.brainartit.com/event/api/new-password';

    try {
      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.fields.addAll({
        'email': email,
        'password': newPassword.value,
        'cpassword': confirmPassword.value
      });

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responseString = await response.stream.bytesToString();
        final jsonResponse = json.decode(responseString);

        if (jsonResponse['status'] == 1) {
          Get.snackbar('Success', jsonResponse['message'],
              snackPosition: SnackPosition.BOTTOM);
          Get.offAllNamed(AppRoutes.SIGNINSCREEN);
        } else {
          Get.snackbar('Error', jsonResponse['message'],
              snackPosition: SnackPosition.BOTTOM);
        }
      } else {
        Get.snackbar('Error', 'Failed to reset password. Status code: ${response.statusCode}',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar('Error', 'An error occurred: $e',
          snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading(false);
    }
  }
}
