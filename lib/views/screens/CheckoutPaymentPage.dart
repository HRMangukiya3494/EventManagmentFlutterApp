import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:event_management/views/widgets/ViewAllRowWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutPaymentPage extends StatelessWidget {
  const CheckoutPaymentPage({super.key});

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
              "Add Payment Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: h * 0.026,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff000513),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(h * 0.02),
            child: Container(
              height: h * 0.1,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(h * 0.02),
              ),
              padding: EdgeInsets.all(h * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment :",
                    style: TextStyle(
                      fontSize: h * 0.022,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "\$300.78",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: h * 0.022,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: h * 0.02,
            ),
            child: Text(
              "SELECT PAYMENT METHOD",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.3),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            height: h * 0.1,
            width: double.infinity,
            color: Colors.white.withOpacity(0.1),
            padding: EdgeInsets.all(h * 0.02),
            child: Row(
              children: [
                Container(
                  height: h * 0.06,
                  width: h * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(
                      h * 0.01,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.credit_card,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: w * 0.04,
                ),
                Text(
                  "Credit & Debit Card",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: h * 0.02,
                  ),
                ),
                Spacer(),
                Container(
                  height: h * 0.04,
                  width: h * 0.04,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff00B6AA),
                    ),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(h * 0.006),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff00B6AA),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: h * 0.1,
            width: double.infinity,
            color: Colors.white.withOpacity(0.1),
            padding: EdgeInsets.all(h * 0.02),
            child: Row(
              children: [
                Container(
                  height: h * 0.06,
                  width: h * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(
                      h * 0.01,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.credit_card,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: w * 0.04,
                ),
                Text(
                  "GPay",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: h * 0.02,
                  ),
                ),
                Spacer(),
                Container(
                  height: h * 0.04,
                  width: h * 0.04,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff00B6AA),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              h * 0.02,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "SELECT CARD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: h * 0.024,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.ADDNEWCARD);
                      },
                      child: Text(
                        "Add New Card",
                        style: TextStyle(
                          color: Color(0xff00B6AA),
                          fontWeight: FontWeight.bold,
                          fontSize: h * 0.016,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  height: h * 0.08,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    bottom: h * 0.02,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      h * 0.02,
                    ),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  padding: EdgeInsets.only(
                    top: h * 0.01,
                    bottom: h * 0.01,
                    left: h * 0.02,
                    right: h * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.credit_card,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: w * 0.04,
                      ),
                      Text(
                        "****  ****  ****  1809",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: h * 0.022,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: h * 0.03,
                        width: h * 0.03,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff00B6AA),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
            Get.toNamed(AppRoutes.FAILPAYMENT);
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
                "Confirm",
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
