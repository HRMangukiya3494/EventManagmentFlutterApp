import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:event_management/views/utils/ImageUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentFailPage extends StatelessWidget {
  const PaymentFailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff000513),
      body: Stack(
        children: [
          Container(
            height: h * 0.7,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageUtils.ImagePath + ImageUtils.EventDeatilAppBar,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              h * 0.02,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: h * 0.26,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(
                    h * 0.03,
                  ),
                ),
                padding: EdgeInsets.all(
                  h * 0.01,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sorry!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: h * 0.024,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text(
                      "Your payment could not be completed at this time. Please check your payment details or try again later.",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.3),
                        fontSize: h * 0.02,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Text(
                      "Please Try Again...",
                      style: TextStyle(
                        color: Color(0xff00B6AA),
                        fontSize: h * 0.026,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: h * 0.1,
        width: double.infinity,
        padding: EdgeInsets.all(
          h * 0.02,
        ),
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                h * 0.03,
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xff1E0040),
                  Color(0xffF600AB),
                ],
              ),
            ),
            child: Center(
              child: Text(
                "TRY AGAIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: h * 0.024,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
