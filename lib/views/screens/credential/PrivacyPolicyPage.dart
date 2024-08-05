import 'package:event_management/controller/PrivacyPolicyController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff1E0040),
                Color(0xffF600AB),
              ],
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "Privacy Policy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: h * 0.026,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff000513),
      body: GetX<PrivacyPolicyController>(
        init: PrivacyPolicyController(),
        builder: (controller) {
          if (controller.htmlContent.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (controller.htmlContent.value.startsWith('Error:')) {
            return Center(
              child: Text(
                controller.htmlContent.value,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(h * 0.016),
                child: HtmlWidget(
                  controller.htmlContent.value,
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
