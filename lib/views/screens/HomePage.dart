import 'package:event_management/controller/HomeController.dart';
import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:event_management/views/utils/ImageUtils.dart';
import 'package:event_management/views/widgets/ViewAllRowWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    final HomeController controller = Get.put(
      HomeController(),
    );

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
              "Event Planner",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: h * 0.026,
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.MANAGENOTIFICATIONS);
                },
                child: Container(
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
              ),
              SizedBox(
                width: w * 0.02,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(
          h * 0.02,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                return Container(
                  height: h * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.14),
                    borderRadius: BorderRadius.circular(h * 0.02),
                  ),
                  child: TextField(
                    onChanged: (text) {
                      controller.updateLocationText(text);
                    },
                    cursorColor: Color(0xff00B6AA),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: controller.isTyping
                            ? Color(0xff00B6AA)
                            : Colors.white.withOpacity(0.3),
                      ),
                      suffixIcon: Icon(
                        controller.isTyping ? Icons.clear : Icons.mic,
                        color: Colors.white,
                      ),
                      hintText: 'Enter Location',
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.3),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                    ),
                  ),
                );
              }),
              SizedBox(
                height: h * 0.02,
              ),
              ViewAllRowWidget(
                title: "Category", onTap: () {
                Get.toNamed(AppRoutes.CATEGORY);
              },
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: h * 0.02,),
                      height: h * 0.16,
                      width: h * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            ImageUtils.ImagePath + ImageUtils.SelectOptionBG,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: EdgeInsets.all(h * 0.014),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Sports",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: h * 0.018,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: h * 0.02,),
                      height: h * 0.16,
                      width: h * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            ImageUtils.ImagePath + ImageUtils.SelectOptionBG,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: EdgeInsets.all(h * 0.014),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Sports",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: h * 0.018,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: h * 0.02,),
                      height: h * 0.16,
                      width: h * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            ImageUtils.ImagePath + ImageUtils.SelectOptionBG,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: EdgeInsets.all(h * 0.014),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Sports",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: h * 0.018,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: h * 0.02,),
                      height: h * 0.16,
                      width: h * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            ImageUtils.ImagePath + ImageUtils.SelectOptionBG,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: EdgeInsets.all(h * 0.014),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Sports",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: h * 0.018,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: h * 0.02,),
                      height: h * 0.16,
                      width: h * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            ImageUtils.ImagePath + ImageUtils.SelectOptionBG,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: EdgeInsets.all(h * 0.014),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Sports",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: h * 0.018,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              ViewAllRowWidget(
                title: "Featured", onTap: () {},
                // onTap: () => Get.toNamed(AppRoutes.NEWARRIVALPAGE),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: h * 0.02,
                      ),
                      height: h * 0.32,
                      width: w * 0.8,
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
                                  Icons.favorite_border,
                                  size: h * 0.02,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: h * 0.02,
                      ),
                      height: h * 0.32,
                      width: w * 0.8,
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
                                  Icons.favorite_border,
                                  size: h * 0.02,
                                  color: Colors.white,
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
              SizedBox(
                height: h * 0.02,
              ),
              ViewAllRowWidget(
                title: "Popular Event 🔥", onTap: () {},
                // onTap: () => Get.toNamed(AppRoutes.NEWARRIVALPAGE),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: h * 0.02,
                      ),
                      height: h * 0.32,
                      width: w * 0.8,
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
                                          ImageUtils.SignInPageBG,
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
                                  Icons.favorite_border,
                                  size: h * 0.02,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: h * 0.02,
                      ),
                      height: h * 0.32,
                      width: w * 0.8,
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
                                          ImageUtils.SignInPageBG,
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
                                  Icons.favorite_border,
                                  size: h * 0.02,
                                  color: Colors.white,
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
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff000513),
    );
  }
}
