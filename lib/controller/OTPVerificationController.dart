import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:event_management/views/routes/AppRoutes.dart';

class OTPVerificationController extends GetxController {
  final String email;
  OTPVerificationController(this.email);

  var isLoading = false.obs;
  final pinEditingController = TextEditingController();
  Future<void> verifyOtp(String otpCode) async {
    if (otpCode.length != 4) {
      Get.snackbar('Error', 'Please enter a valid OTP',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    isLoading(true);
    final url = 'https://customize.brainartit.com/event/api/verify-password';

    try {
      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.fields.addAll({
        'email': email,
        'otp': otpCode,
      });

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responseString = await response.stream.bytesToString();
        final jsonResponse = json.decode(responseString);

        if (jsonResponse['status'] == 1) {
          Get.snackbar('Success', jsonResponse['message'],
              snackPosition: SnackPosition.BOTTOM);
          Get.toNamed(AppRoutes.NEWPASSWORD,arguments: email);
        } else {
          Get.snackbar('Error', jsonResponse['message'],
              snackPosition: SnackPosition.BOTTOM);
        }
      } else {
        Get.snackbar('Error', 'Failed to verify OTP. Status code: ${response.statusCode}',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar('Error', 'An error occurred: $e',
          snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading(false);
    }
  }

  // Send reset request
  Future<void> sendResetRequest(String email) async {
    isLoading(true);
    final url = 'https://customize.brainartit.com/event/api/resend-otp';

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
        } else {
          Get.snackbar('Error', jsonResponse['message'],
              snackPosition: SnackPosition.BOTTOM);
        }
      } else {
        Get.snackbar('Error', 'Failed to resend OTP. Status code: ${response.statusCode}',
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
