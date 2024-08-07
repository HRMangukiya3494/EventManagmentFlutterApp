import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:event_management/views/utils/VarUtils.dart';

class SignInController extends GetxController {
  // Reactive variables
  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;
  var loginMessage = ''.obs;
  var userId = 0.obs;
  var userName = ''.obs;
  var userPhone = ''.obs;

  // Method to handle sign in
  Future<void> signIn() async {
    if (email.value.isEmpty || password.value.isEmpty) {
      showSnackbar('Error', 'Email and password are required');
      return;
    }

    isLoading.value = true;
    loginMessage.value = '';
    print('SignIn process started'); // Debug print
    print('Email: ${email.value}, Password: ${password.value}'); // Debug print

    try {
      var request = http.MultipartRequest(
          'POST',
          Uri.parse('https://customize.brainartit.com/event/api/user_login')
      );

      request.fields.addAll({
        'email': email.value,
        'password': password.value,
      });

      http.StreamedResponse response = await request.send();

      print('Response status: ${response.statusCode}'); // Debug print

      if (response.statusCode == 200) {
        var responseBody = await response.stream.bytesToString();
        var data = jsonDecode(responseBody);

        print('Response body: $data'); // Debug print

        if (data['success'] == 1) {
          // Handle successful login
          loginMessage.value = data['message'];
          var userData = data['data'];

          // Save user data to VarUtils
          VarUtils.userId = userData['id'];
          VarUtils.name = userData['name'];
          VarUtils.phone = userData['phone'].toString();

          // Show success message
          showSnackbar('Success', loginMessage.value);

          // Navigate to the bottom navigation page
          Get.offAllNamed(AppRoutes.BOTTOMNAVIIGATION);
        } else {
          // Handle failed login
          showSnackbar('Error', data['message']);
        }
      } else {
        showSnackbar('Error', 'Failed to connect to the server');
      }
    } catch (e) {
      showSnackbar('Error', 'An error occurred: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void showSnackbar(String title, String message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.black.withOpacity(0.7),
      colorText: Colors.white,
      borderRadius: 8,
      margin: EdgeInsets.all(16),
      duration: Duration(seconds: 3),
    );
  }
}