import 'package:event_management/controller/OnboardingController.dart';
import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    final PageController pageController = PageController();
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // PageView to handle page changes
          PageView.builder(
            controller: pageController,
            itemCount: 3,
            onPageChanged: (index) => controller.setPage(index),
            itemBuilder: (context, index) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Onboarding${index + 1}.png',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: h * 0.6,
                    left: h * 0.03,
                    right: h * 0.03,
                    bottom: h * 0.04,
                  ),
                  child: Center(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x4C000513),
                        borderRadius: BorderRadius.circular(h * 0.02),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.16),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff000513).withOpacity(0.28),
                            blurRadius: 78,
                            spreadRadius: 0,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(h * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _getTitle(index),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: h * 0.028,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              _getSubtitle(index),
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: h * 0.02,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            // Indicator Row
                            Obx(
                                  () => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  3,
                                      (i) => Container(
                                    height: h * 0.01,
                                    width: w * 0.12,
                                    decoration: BoxDecoration(
                                      color: controller.currentPage.value == i
                                          ? Colors.white
                                          : Colors.white.withOpacity(0.12),
                                      borderRadius: BorderRadius.circular(h * 0.02),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                int nextPage = controller.currentPage.value + 1;
                                if (nextPage < 3) {
                                  pageController.animateToPage(
                                    nextPage,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                  controller.setPage(nextPage);
                                } else {
                                  Get.offNamed(AppRoutes.SELECTOPTION);
                                }
                              },
                              child: Container(
                                height: h * 0.06,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(h * 0.04),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(h * 0.01),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: h * 0.04,
                                        width: h * 0.04,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xff1E0040),
                                              Color(0xffF600AB),
                                            ],
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 16,
                                              color: Color(0xff9A5A9A),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Get Started",
                                        style: TextStyle(
                                          fontSize: h * 0.022,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xff000513).withOpacity(0.28),
                                            size: h * 0.02,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xff000513),
                                            size: h * 0.02,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return "Seamless Event Planning, Just a Click Away";
      case 1:
        return "Discover and Book Venues Easily";
      case 2:
        return "Effortless Event Management";
      default:
        return "";
    }
  }

  String _getSubtitle(int index) {
    switch (index) {
      case 0:
        return "Explore and Secure Premium Venues with Ease.";
      case 1:
        return "Find the Perfect Space for Your Events.";
      case 2:
        return "Manage Events with Just a Few Taps.";
      default:
        return "";
    }
  }
}