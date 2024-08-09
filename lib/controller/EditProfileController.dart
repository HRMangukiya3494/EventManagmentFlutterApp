import 'dart:convert';
import 'dart:io';

import 'package:event_management/views/utils/VarUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class EditProfileController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final Rx<File?> profileImage = Rx<File?>(null);

  @override
  void onInit() {
    super.onInit();
    // Initialize controllers with existing values
    nameController.text = VarUtils.name;
    emailController.text = VarUtils.email;
    phoneController.text = VarUtils.phone;
  }

  void updateProfile() async {
    final request = http.MultipartRequest(
        'POST',
        Uri.parse('https://customize.brainartit.com/event/api/user_edit')
    );
    request.fields.addAll({
      'id': '20', // You might need to get this dynamically from VarUtils or another source
      'name': nameController.text,
      'email': emailController.text,
      'phone': phoneController.text,
    });

    // Attach the profile picture if available
    if (profileImage.value != null) {
      request.files.add(
        await http.MultipartFile.fromPath(
          'profile_pic',
          profileImage.value!.path,
        ),
      );
    }

    try {
      final response = await request.send();

      if (response.statusCode == 200) {
        final responseData = await response.stream.bytesToString();
        // Parse response and update VarUtils
        final data = jsonDecode(responseData);
        if (data['success'] == 1) {
          VarUtils.name = nameController.text;
          VarUtils.email = emailController.text;
          VarUtils.phone = phoneController.text;
          // Handle other data from response if needed
          Get.snackbar('Success', data['message']);
          // Optionally navigate back or refresh
        } else {
          Get.snackbar('Error', data['message']);
        }
      } else {
        Get.snackbar('Error', response.reasonPhrase ?? 'Unknown error');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to update profile');
    }
  }
}
