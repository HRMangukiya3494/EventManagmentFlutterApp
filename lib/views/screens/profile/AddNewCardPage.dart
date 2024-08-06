import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewCardPage extends StatelessWidget {
  const AddNewCardPage({super.key});

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
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "Add Card Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: h * 0.026,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(
          h * 0.02,
        ),
        child: Container(
          height: h * 0.36,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(
              h * 0.02,
            ),
          ),
          padding: EdgeInsets.all(
            h * 0.014,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Card Details",
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
                      Icons.credit_card,
                      color: Color(0xff00B6AA),
                    ),
                    hintText: 'Enter Card Number',
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
                "Cardholder Name",
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
                      Icons.person,
                      color: Color(0xff00B6AA),
                    ),
                    hintText: 'Enter Your Name',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                  ),
                ),
              ), SizedBox(
                height: h * 0.02,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Expiry Date",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.48),
                              ),
                            ),
                            SizedBox(height: h * 0.01),
                            Container(
                              height: h * 0.06,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.14),
                                borderRadius: BorderRadius.circular(h * 0.01),
                              ),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.calendar_month,
                                    color: Color(0xff00B6AA),
                                  ),
                                  hintText: 'Enter Expiry Date',
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: w * 0.02), // Space between fields
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CVV/CVC",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.48),
                              ),
                            ),
                            SizedBox(height: h * 0.01),
                            Container(
                              height: h * 0.06,
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
                                    color: Color(0xff00B6AA),
                                  ),
                                  hintText: 'Enter Your CVV/CVC',
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff000513),
      bottomNavigationBar: Container(
        height: h * 0.08,
        padding: EdgeInsets.all(h * 0.01),
        child: GestureDetector(
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
              borderRadius: BorderRadius.circular(
                h * 0.026,
              ),
            ),
            child: Center(
              child: Text(
                "Add New Card",
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
    );
  }
}
