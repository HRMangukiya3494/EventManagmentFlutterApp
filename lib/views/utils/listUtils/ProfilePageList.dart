import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<Map<String, dynamic>> profilePageList = [
  {
    'icon': CupertinoIcons.creditcard,
    'title': 'Payment Methods',
    'onTap': () {
      Get.toNamed(AppRoutes.PAYMENTMETHODS);
    }
  },
  {
    'icon': Icons.notifications_sharp,
    'title': 'Notification',
    'onTap': () {
      Get.toNamed(AppRoutes.MANAGENOTIFICATIONS);
    }
  },
  {
    'icon': CupertinoIcons.doc,
    'title': 'Terms of Service',
    'onTap': () {
      Get.toNamed(AppRoutes.TERMSSERVICE);
    }
  },
  {
    'icon': CupertinoIcons.lock,
    'title': 'Privacy Policy',
    'onTap': () {
      Get.toNamed(AppRoutes.PRIVACYPOLICY);
    }
  },
  {
    'icon': Icons.settings_power,
    'title': 'Log out',
    'onTap': () {
      Get.offAllNamed(AppRoutes.SIGNINSCREEN);
    }
  },
];
