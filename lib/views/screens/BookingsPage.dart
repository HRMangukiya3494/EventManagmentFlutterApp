import 'package:event_management/controller/BookingController.dart';
import 'package:event_management/views/utils/ImageUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingsPage extends StatelessWidget {
  BookingsPage({super.key});

  final BookingController controller = Get.put(
    BookingController(),
  );

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
              "My Bookings",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: h * 0.026,
              ),
            ),
            actions: [
              Container(
                height: h * 0.04,
                width: h * 0.04,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.14),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                  ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.notifications_sharp,
                    size: h * 0.02,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: w * 0.02,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff000513),
      body: Padding(
        padding: EdgeInsets.all(
          h * 0.02,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h * 0.02),
                  color: Colors.white.withOpacity(0.1),
                ),
                padding: EdgeInsets.all(h * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => controller.selectIndex(0),
                      child: Obx(() {
                        return Container(
                          height: double.infinity,
                          width: w * 0.38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h * 0.02),
                            gradient: controller.selectedIndex.value == 0
                                ? LinearGradient(
                                    colors: [
                                      Color(0xff1E0040),
                                      Color(0xffF600AB),
                                    ],
                                  )
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              'Upcoming',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: h * 0.02,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(width: h * 0.02),
                    GestureDetector(
                      onTap: () => controller.selectIndex(1),
                      child: Obx(() {
                        return Container(
                          height: double.infinity,
                          width: w * 0.38,
                          decoration: BoxDecoration(
                            gradient: controller.selectedIndex.value == 0
                                ? null
                                : LinearGradient(
                                    colors: [
                                      Color(0xff1E0040),
                                      Color(0xffF600AB),
                                    ],
                                  ),
                            borderRadius: BorderRadius.circular(h * 0.02),
                          ),
                          child: Center(
                            child: Text(
                              'Past',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: h * 0.02,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                height: h * 0.32,
                width: double.infinity,
                padding: EdgeInsets.all(
                  h * 0.01,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(h * 0.02),
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: h * 0.2,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h * 0.02),
                            image: DecorationImage(
                              image: AssetImage(
                                ImageUtils.ImagePath +
                                    ImageUtils.SelectOptionBG,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          padding: EdgeInsets.all(h * 0.01),
                        ),
                        Text(
                          "National Music Festival",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: h * 0.024,
                          ),
                        ),
                        Text(
                          "Mon, Dec 24 • 18:00 - 32:00 PM",
                          style: TextStyle(
                            color: Color(0xff00B6AA),
                            fontSize: h * 0.018,
                          ),
                        ),
                        Text(
                          "📌 Grand Park, New York",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      right: h * 0.01,
                      top: h * 0.01,
                      child: Container(
                        height: h * 0.04,
                        // Increased size for better glow effect
                        width: h * 0.04,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.18),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff00B6AA).withOpacity(0.3),
                              // Glow color
                              spreadRadius: 2,
                              // Spread radius
                              blurRadius: 6,
                              // Blur radius
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            size: h * 0.024,
                            color: Color(0xff00B6AA),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
