import 'dart:convert';
import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ForgetPasswordController extends GetxController {
  var isLoading = false.obs;

  Future<void> sendResetRequest(String email) async {
    if (email.isEmpty) {
      Get.snackbar('Error', 'Please enter an email address',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    isLoading(true);
    final url = 'https://customize.brainartit.com/event/api/forget-password';

    try {
      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.fields.addAll({'email': email});

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responseString = await response.stream.bytesToString();
        final jsonResponse = json.decode(responseString);

        if (jsonResponse['status'] == 1) {
          Get.snackbar('Success', jsonResponse['message'],
              snackPosition: SnackPosition.BOTTOM);
          Get.toNamed(
            AppRoutes.OTPVEREFICATION,
            arguments: email,
          );
        } else {
          Get.snackbar('Error', jsonResponse['message'],
              snackPosition: SnackPosition.BOTTOM);
        }
      } else {
        Get.snackbar(
            'Error', 'Failed to send OTP. Status code: ${response.statusCode}',
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
