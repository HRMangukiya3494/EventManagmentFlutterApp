import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:event_management/views/utils/ImageUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectOptionPage extends StatelessWidget {
  const SelectOptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageUtils.ImagePath + ImageUtils.SelectOptionBG,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: h * 0.6,
              left: h * 0.03,
              right: h * 0.03,
              bottom: h * 0.04,
            ),
            child: Container(
              padding: EdgeInsets.only(
                left: h * 0.04,
                right: h * 0.04,
              ),
              height: h * 0.36,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  h * 0.02,
                ),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF1E0040),
                    Color(0xFFF600AB),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: h * 0.01,
                  right: h * 0.01,
                  top: h * 0.04,
                  bottom: h * 0.04,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "What are you looking for?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: h * 0.028,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.offAllNamed(AppRoutes.SIGNINSCREEN);
                          },
                          child: Container(
                            height: h * 0.06,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                h * 0.014,
                              ),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(
                                h * 0.01,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: h * 0.04,
                                    width: h * 0.04,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageUtils.ImagePath +
                                              ImageUtils.EventIconVector,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: w * 0.02,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "I’m looking for a Event Planning",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: h * 0.014,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: w * 0.02,
                                  ),
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
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.offAllNamed(AppRoutes.SIGNINSCREEN);
                          },
                          child: Container(
                            height: h * 0.06,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                h * 0.014,
                              ),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(
                                h * 0.01,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: h * 0.04,
                                    width: h * 0.04,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageUtils.ImagePath +
                                              ImageUtils.CalenderIconVector,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: w * 0.02,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "I have a Event Planning to list",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: h * 0.014,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: w * 0.02,
                                  ),
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
                                ],
                              ),
                            ),
                          ),
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
    );
  }
}
