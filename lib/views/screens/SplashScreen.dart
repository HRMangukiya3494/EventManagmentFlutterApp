import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:get/get.dart';

import '../utils/ImageUtils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(
        AppRoutes.INTRO,
      );
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageUtils.ImagePath + ImageUtils.SplashScreenBG,
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: h * 0.24,
                  width: h * 0.24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      h * 0.03,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        ImageUtils.ImagePath + ImageUtils.AppIcon,
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Event Management",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: h * 0.028,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
