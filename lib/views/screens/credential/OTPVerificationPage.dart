import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:event_management/controller/OTPVerificationController.dart';

class OTPVerificationPage extends StatelessWidget {
  OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final email = Get.arguments.toString();
    final OTPVerificationController otpVerificationController = Get.put(OTPVerificationController(email));

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
        padding: EdgeInsets.all(h * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter the verification code we just sent to your email $email",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: h * 0.02,
              ),
            ),
            SizedBox(height: h * 0.06),
            PinInputTextField(
              controller: otpVerificationController.pinEditingController,
              pinLength: 4,
              autoFocus: true,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: UnderlineDecoration(
                textStyle: TextStyle(
                  fontSize: h * 0.026,
                  color: Colors.white,
                ),
                colorBuilder: PinListenColorBuilder(
                  Colors.white,
                  Colors.grey,
                ),
              ),
              onChanged: (pin) {
                if (pin.length == 4) {
                  otpVerificationController.verifyOtp(pin);
                }
              },
            ),
            SizedBox(height: h * 0.02),
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
                TextButton(
                  onPressed: () {
                    otpVerificationController.sendResetRequest(email);
                  },
                  child: Text(
                    "Resend",
                    style: TextStyle(
                        color: Color(0xff00B6AA),
                        fontWeight: FontWeight.bold,
                        fontSize: h * 0.02),
                  ),
                ),
              ],
            ),
            SizedBox(height: h * 0.04),
            GestureDetector(
              onTap: () {
                otpVerificationController.verifyOtp(otpVerificationController.pinEditingController.text);
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
}
