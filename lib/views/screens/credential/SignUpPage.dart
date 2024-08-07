import 'package:event_management/controller/SignUpController.dart';
import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  final SignUpController controller = Get.put(SignUpController());

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
        padding: EdgeInsets.all(h * 0.02),
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
            SizedBox(height: h * 0.04),
            // First Name and Last Name fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: _buildTextField(
                    hintText: 'First Name',
                    controller: controller.firstNameController,
                  ),
                ),
                SizedBox(width: 10), // Space between fields
                Expanded(
                  child: _buildTextField(
                    hintText: 'Last Name',
                    controller: controller.lastNameController,
                  ),
                ),
              ],
            ),
            SizedBox(height: h * 0.02),
            // Email field
            _buildTextField(
              hintText: 'Enter your email',
              controller: controller.emailController,
              prefixIcon: Icons.email,
            ),
            SizedBox(height: h * 0.02),
            // Phone field
            _buildTextField(
              hintText: 'Enter your mobile number',
              controller: controller.phoneNumberController,
              prefixIcon: Icons.call,
            ),
            SizedBox(height: h * 0.02),
            // Password field
            _buildTextField(
              hintText: 'Enter your password',
              controller: controller.passwordController,
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(height: h * 0.02),
            // Confirm Password field
            _buildTextField(
              hintText: 'Confirm your password',
              controller: controller.confirmPasswordController,
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(height: h * 0.02),
            // Privacy Policy and Terms checkbox
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
            SizedBox(height: h * 0.04),
            // Verify Button
            GestureDetector(
              onTap: () {
                controller.registerUser();
              },
              child: _buildButton(
                text: "Verify",
                gradientColors: [Color(0xff1E0040), Color(0xffF600AB)],
              ),
            ),
            SizedBox(height: h * 0.02),
            // Log In Button
            GestureDetector(
              onTap: () {
                Get.offAllNamed(AppRoutes.HOME);
              },
              child: _buildButton(
                text: "Log In",
                borderColor: Colors.white.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    required TextEditingController controller,
    IconData? prefixIcon,
    bool obscureText = false,
  }) {
    return Container(
      height: MediaQuery.of(Get.context!).size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.14),
        borderRadius: BorderRadius.circular(MediaQuery.of(Get.context!).size.height * 0.01),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: prefixIcon != null
              ? Icon(prefixIcon, color: Colors.white)
              : null,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
        ),
      ),
    );
  }

  Widget _buildButton({
    required String text,
    List<Color>? gradientColors,
    Color? borderColor,
  }) {
    return Container(
      height: MediaQuery.of(Get.context!).size.height * 0.06,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: gradientColors != null
            ? LinearGradient(colors: gradientColors)
            : null,
        border: borderColor != null
            ? Border.all(color: borderColor, width: MediaQuery.of(Get.context!).size.height * 0.002)
            : null,
        borderRadius: BorderRadius.circular(MediaQuery.of(Get.context!).size.height * 0.026),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: MediaQuery.of(Get.context!).size.height * 0.023,
          ),
        ),
      ),
    );
  }
}