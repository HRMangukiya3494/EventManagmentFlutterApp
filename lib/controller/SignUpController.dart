import 'dart:convert';
import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:event_management/views/utils/VarUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneNumberController = TextEditingController();

  var isChecked = false.obs;

  void toggleCheckbox(bool value) {
    isChecked.value = value;
  }

  Future<void> registerUser() async {
    String firstName = firstNameController.text.trim();
    String lastName = lastNameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();
    String phone = phoneNumberController.text.trim();

    if (firstName.length < 2) {
      Get.snackbar(
        'Error',
        'Name must be at least 2 characters long',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    if (phone.length != 10 || !RegExp(r'^\d{10}$').hasMatch(phone)) {
      Get.snackbar(
        'Error',
        'Phone number must be exactly 10 digits',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    if (!GetUtils.isEmail(email) || !email.endsWith('@gmail.com')) {
      Get.snackbar(
        'Error',
        'Please enter a valid Gmail address',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    if (!RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$').hasMatch(password)) {
      Get.snackbar(
        'Error',
        'Password must be at least 8 characters long, contain one uppercase letter, one digit, and one special character',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    if (password != confirmPassword) {
      Get.snackbar(
        'Error',
        'Passwords do not match',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    if (!isChecked.value) {
      Get.snackbar(
        'Error',
        'You must agree to the terms and conditions',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    VarUtils.name = '$firstName $lastName';
    VarUtils.email = email;
    VarUtils.password = password;
    VarUtils.rePassword = confirmPassword;
    VarUtils.phone = phone;

    var request = http.MultipartRequest(
      'POST',
      Uri.parse('https://customize.brainartit.com/event/api/user_register'),
    );

    request.fields['name'] = VarUtils.name;
    request.fields['email'] = VarUtils.email;
    request.fields['password'] = VarUtils.password;
    request.fields['cpassword'] = VarUtils.rePassword;
    request.fields['phone'] = VarUtils.phone;

    try {
      var response = await request.send();
      final responseBody = await response.stream.bytesToString();
      final responseData = json.decode(responseBody);

      final success = responseData['success'] ?? 0;
      final message = responseData['message'] ?? 'An error occurred';

      if (success == 1) {
        Get.snackbar(
          'Success',
          message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.offAllNamed(AppRoutes.BOTTOMNAVIIGATION);
      } else {
        Get.snackbar(
          'Oops...',
          message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'An error occurred: $e',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}