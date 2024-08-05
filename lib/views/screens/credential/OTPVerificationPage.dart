import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

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
              "OTP Verification",
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
              "Enter the verification code we just sent to your number +233 *******53.",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: h * 0.02,
              ),
            ),
            SizedBox(
              height: h * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                6,
                (index) => _buildOtpTextField(index, h, context),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t receive code?",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: h * 0.02),
                ),
                Text(
                  "Resend",
                  style: TextStyle(
                      color: Color(0xff00B6AA),
                      fontWeight: FontWeight.bold,
                      fontSize: h * 0.02),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.04,
            ),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(AppRoutes.SIGNINSCREEN);
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
          ],
        ),
      ),
    );
  }

  Widget _buildOtpTextField(int index, double height, BuildContext context) {
    return SizedBox(
      height: height * 0.06,
      width: height * 0.06,
      child: Container(
        decoration: BoxDecoration(

          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(height * 0.01),
          border: Border.all(color: Colors.white,), // Border color
        ),
        child: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counterText: "",
            border: InputBorder.none,
          ),
          cursorColor: Color(0xff00B6AA),
          onChanged: (value) {
            if (value.length == 1 && index < 5) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && index > 0) {
              FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }
}
