import 'package:event_management/controller/ForgetPasswordController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordPage extends StatelessWidget {
  ForgetPasswordPage({super.key});

  final ForgetPasswordController controller =
      Get.put(ForgetPasswordController());
  final TextEditingController emailController = TextEditingController();

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
              "Forgot Password?",
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(h * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Don’t worry! It happens. Please enter the address associated with your account.",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: h * 0.02,
              ),
            ),
            SizedBox(
              height: h * 0.06,
            ),
            Text(
              "Email",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Container(
              height: h * 0.06,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(h * 0.01),
              ),
              child: TextField(
                controller: emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.06,
            ),
            Obx(() {
              return GestureDetector(
                onTap: () {
                  String email = emailController.text;
                  if (email.isNotEmpty) {
                    controller.sendResetRequest(email).then((_) {
                      emailController.clear();
                    });
                  } else {
                    Get.snackbar('Error', 'Please enter an email address',
                        snackPosition: SnackPosition.BOTTOM);
                  }
                },
                child: Container(
                  height: h * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff1E0040),
                        Color(0xffF600AB),
                      ],
                    ),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                      width: h * 0.004,
                    ),
                    borderRadius: BorderRadius.circular(h * 0.026),
                  ),
                  child: Center(
                    child: controller.isLoading.value
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text(
                            "Submit",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: h * 0.023,
                            ),
                          ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
      backgroundColor: Color(0xff000513),
    );
  }
}
