import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodsPage extends StatelessWidget {
  const PaymentMethodsPage({super.key});

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
              "Add Payment Method",
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
      body: Padding(
        padding: EdgeInsets.all(
          h * 0.02,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.ADDNEWCARD);
              },
              child: Container(
                height: h * 0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    h * 0.02,
                  ),
                  color: Colors.white.withOpacity(0.1),
                ),
                padding: EdgeInsets.all(
                  h * 0.03,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Text(
                      "Add New Card",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: h * 0.024,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              height: h * 0.08,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: h * 0.02,),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "****  ****  ****  1809",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.022,
                    ),
                  ),
                  Container(
                    height: h * 0.05,
                    width: h * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(
                        h * 0.01,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.08,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: h * 0.02,),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "****  ****  ****  1809",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.022,
                    ),
                  ),
                  Container(
                    height: h * 0.05,
                    width: h * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(
                        h * 0.01,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
