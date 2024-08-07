import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VarUtils {
  static String name = "";
  static int userId = 0;
  static String phone = "";
  static String password = "";
  static String rePassword = "";
  static String email = "";

  static void showLog() {
    log("Name: $name");
    log("Phone Number: $phone");
    log("Password: $password");
    log("Re Password: $rePassword");
    log("Email: $email");
  }
}