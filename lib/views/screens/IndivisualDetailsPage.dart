import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:event_management/views/utils/ImageUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndividualDetailsPage extends StatelessWidget {
  const IndividualDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff000513),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.44,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageUtils.ImagePath + ImageUtils.EventDeatilAppBar,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: h * 0.06,
                      left: h * 0.02,
                    ),
                    height: h * 0.06,
                    width: h * 0.06,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        width: h * 0.002,
                      ),
                    ),
                    child: Icon(
                      CupertinoIcons.return_icon,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: h * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "National Music Festival",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: h * 0.028,
                      ),
                    ),
                    Text(
                      "Mon, Dec 24 * 18:00 - 32:00 PM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: h * 0.02,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: h * 0.06,
                  width: w * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        h * 0.024,
                      ),
                      bottomLeft: Radius.circular(
                        h * 0.024,
                      ),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff1E0040),
                        Color(0xffF600AB),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Padding(
              padding: EdgeInsets.all(
                h * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: h * 0.08,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(
                        h * 0.02,
                      ),
                    ),
                    padding: EdgeInsets.all(
                      h * 0.01,
                    ),
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
                              Icons.location_on,
                              color: Colors.white,
                              size: h * 0.032,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Grand Park, New York",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: h * 0.02,
                              ),
                            ),
                            Text(
                              "Get Directions →",
                              style: TextStyle(
                                color: Color(0xff00B6AA),
                                fontSize: h * 0.016,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "HOSTED BY",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    children: [
                      Container(
                        height: h * 0.06,
                        width: h * 0.06,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2),
                          image: DecorationImage(
                            image: AssetImage(
                              ImageUtils.ImagePath + ImageUtils.SelectOptionBG,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.04,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cameron Williamson",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: h * 0.02,
                            ),
                          ),
                          Text(
                            "williamson007@gmail.com",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                              fontSize: h * 0.016,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: h * 0.06,
                        width: h * 0.06,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2),
                          image: DecorationImage(
                            image: AssetImage(
                              ImageUtils.ImagePath + ImageUtils.SelectOptionBG,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.04,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cameron Williamson",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: h * 0.02,
                            ),
                          ),
                          Text(
                            "williamson007@gmail.com",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                              fontSize: h * 0.016,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(
                        h * 0.016,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: h * 0.06,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(h * 0.02),
                              topRight: Radius.circular(h * 0.02),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "About This Event",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: h * 0.024,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                            h * 0.01,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white.withOpacity(0.5),
                              fontSize: h * 0.018,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
              ),
              padding: EdgeInsets.all(h * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Organizers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.02,
                    ),
                  ),
                  Text(
                    "This event organize by...",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: h * 0.016,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: h * 0.18,
                          width: w * 0.46,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(h * 0.014),
                            border: Border.all(
                              color: Color(0xff00B6AA),
                            ),
                          ),
                          padding: EdgeInsets.all(
                            h * 0.01,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: h * 0.11,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    h * 0.01,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageUtils.ImagePath +
                                          ImageUtils.SelectOptionBG,
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Text(
                                "Clutter B Gone",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: h * 0.018,
                                ),
                              ),
                              Text(
                                "(860) 645-1924",
                                style: TextStyle(
                                  color: Color(0xff00B6AA),
                                  fontSize: h * 0.014,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: w * 0.04,
                        ),
                        Container(
                          height: h * 0.18,
                          width: w * 0.46,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(h * 0.014),
                            border: Border.all(
                              color: Color(0xff00B6AA),
                            ),
                          ),
                          padding: EdgeInsets.all(
                            h * 0.01,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: h * 0.11,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    h * 0.01,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageUtils.ImagePath +
                                          ImageUtils.SelectOptionBG,
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Text(
                                "Clutter B Gone",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: h * 0.018,
                                ),
                              ),
                              Text(
                                "(860) 645-1924",
                                style: TextStyle(
                                  color: Color(0xff00B6AA),
                                  fontSize: h * 0.014,
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
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
              ),
              padding: EdgeInsets.all(h * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tickets",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.02,
                    ),
                  ),
                  Text(
                    "Choose your favourite tickets...",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: h * 0.016,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(h * 0.014),
                            border: Border.all(
                              color: Color(0xff00B6AA),
                            ),
                          ),
                          padding: EdgeInsets.all(
                            h * 0.01,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Silver",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: h * 0.018,
                                ),
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Text(
                                "Seat:\t300",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: h * 0.018,
                                ),
                              ),
                              Text(
                                "Price:\t300",
                                style: TextStyle(
                                  color: Color(0xff00B6AA),
                                  fontSize: h * 0.018,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: w * 0.04,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(h * 0.014),
                            border: Border.all(
                              color: Color(0xff00B6AA),
                            ),
                          ),
                          padding: EdgeInsets.all(
                            h * 0.01,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Gold",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: h * 0.018,
                                ),
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Text(
                                "Seat:\t300",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: h * 0.018,
                                ),
                              ),
                              Text(
                                "Price:\t300",
                                style: TextStyle(
                                  color: Color(0xff00B6AA),
                                  fontSize: h * 0.018,
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
            ),
            SizedBox(
              height: h * 0.02,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: h * 0.08,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1E0040),
              Color(0xffF600AB),
            ],
          ),
        ),
        padding: EdgeInsets.all(
          h * 0.01,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$500 per person",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: h * 0.02,
                  ),
                ),
                Text(
                  "08 Oct - 09 Oct",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: h * 0.016,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap:  () {
                Get.toNamed(AppRoutes.CHECKOUTPAYMENT);
              },
              child: Container(
                height: double.infinity,
                width: w * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    h * 0.03,
                  ),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: h * 0.02,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: w * 0.02,
                      ),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.black,
                      ),
                    ],
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
