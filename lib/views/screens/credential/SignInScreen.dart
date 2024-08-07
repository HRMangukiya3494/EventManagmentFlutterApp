import 'package:event_management/controller/SignInController.dart';
import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:event_management/views/utils/ImageUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final SignInController signInController = Get.put(SignInController());

    return Scaffold(
      
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageUtils.ImagePath + ImageUtils.SignInPageBG,
                ),fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: h * 0.02,
                right: h * 0.02,
                top: h * 0.12,
                bottom: h * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: h * 0.1,
                        width: h * 0.1,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageUtils.ImagePath + ImageUtils.AppIcon,
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.02,
                      ),
                      Text(
                        "Event\nManagement",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: h * 0.028,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Text(
                    "Hi there!\nWelcome back.",
                    style: TextStyle(
                      fontSize: h * 0.028,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        h * 0.02,
                      ),
                      color: Colors.white.withOpacity(0.1),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.16),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(
                        h * 0.016,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 14),
                              ),
                              onChanged: (value) {
                                signInController.email.value = value;
                              },
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
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 14),
                              ),
                              onChanged: (value) {
                                signInController.password.value = value;
                              },
                            ),
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.FORGET);
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: h * 0.02,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.06,
                  ),
                  Obx(
                    () => GestureDetector(
                      onTap: () {
                        if (!signInController.isLoading.value) {
                          signInController.signIn();
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
                          borderRadius: BorderRadius.circular(
                            h * 0.026,
                          ),
                        ),
                        child: Center(
                          child: signInController.isLoading.value
                              ? CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : Text(
                                  "Sign in",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: h * 0.023,
                                  ),
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
                      Get.toNamed(AppRoutes.SIGNUP);
                    },
                    child: Container(
                      height: h * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF000513).withOpacity(0.15),
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
                          "Create a new account",
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
          ),
        ],
      ),
    );
  }
}
