import 'package:event_management/controller/SignUpController.dart';
import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  final SignUpController controller = Get.put(
    SignUpController(),
  );

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
              "Create Account",
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
      body: Padding(
        padding: EdgeInsets.all(
          h * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Join us today and start your journey!",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: h * 0.02,
              ),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "First Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.48),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Last Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.48),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: h * 0.06,
                    margin: EdgeInsets.only(right: 10), // Space between fields
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.14),
                      borderRadius: BorderRadius.circular(h * 0.01),
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 14),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: h * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.14),
                      borderRadius: BorderRadius.circular(h * 0.01),
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              "Email",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.48),
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Container(
              height: h * 0.06,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.14),
                borderRadius: BorderRadius.circular(h * 0.01),
              ),
              child: TextField(
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
              height: h * 0.02,
            ),
            Text(
              "Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.48),
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Container(
              height: h * 0.06,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.14),
                borderRadius: BorderRadius.circular(h * 0.01),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              "Confirm Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.48),
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Container(
              height: h * 0.06,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.14),
                borderRadius: BorderRadius.circular(h * 0.01),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: 'Enter re-password',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Color(0xFF00B6AA),
                    value: controller.isChecked.value,
                    onChanged: (bool? value) {
                      controller.toggleCheckbox(value ?? false);
                    },
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'I agree to the ',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: Color(0xFF00B6AA),
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(AppRoutes.PRIVACYPOLICY);
                            },
                        ),
                        TextSpan(
                          text: ' & ',
                          style: TextStyle(
                              color: Color(0xFF00B6AA),
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Terms',
                          style: TextStyle(
                              color: Color(0xFF00B6AA),
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(AppRoutes.TERMSSERVICE);
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.04,
            ),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(AppRoutes.BOTTOMNAVIIGATION);
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
                  borderRadius: BorderRadius.circular(
                    h * 0.026,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.023,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(AppRoutes.HOME);
              },
              child: Container(
                height: h * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.1),
                    width: h * 0.002,
                  ),
                  borderRadius: BorderRadius.circular(
                    h * 0.026,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.023,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
