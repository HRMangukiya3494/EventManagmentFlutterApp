import 'package:event_management/controller/ResetPasswordController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    final email = Get.arguments.toString();
    final ResetPasswordController controller = Get.put(ResetPasswordController());

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
              "Reset Password",
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
              "Reset your password to regain access to your account.",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: h * 0.02,
              ),
            ),
            SizedBox(height: h * 0.06),
            Text(
              "New Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
            SizedBox(height: h * 0.01),
            _buildPasswordField(
              context,
              controller.newPassword,
              'Enter your password',
              Icons.lock,
                  (value) => controller.newPassword.value = value,
            ),
            SizedBox(height: h * 0.02),
            Text(
              "Confirm Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
            SizedBox(height: h * 0.01),
            _buildPasswordField(
              context,
              controller.confirmPassword,
              'Confirm your password',
              Icons.lock,
                  (value) => controller.confirmPassword.value = value,
            ),
            SizedBox(height: h * 0.06),
            Obx(() => _buildResetButton(
              context,
              controller.isLoading,
                  () {
                if (!controller.isLoading.value) {
                  controller.resetPassword(email);
                }
              },
            )),
          ],
        ),
      ),
      backgroundColor: Color(0xff000513),
    );
  }

  Widget _buildPasswordField(BuildContext context, RxString password, String hintText, IconData icon, Function(String) onChanged) {
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.06,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(h * 0.01),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
        ),
        obscureText: true,
      ),
    );
  }

  Widget _buildResetButton(BuildContext context, RxBool isLoading, VoidCallback onPressed) {
    double h = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onPressed,
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
          child: isLoading.value
              ? CircularProgressIndicator(
            color: Colors.white,
          )
              : Text(
            "Reset Password",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: h * 0.023,
            ),
          ),
        ),
      ),
    );
  }
}
