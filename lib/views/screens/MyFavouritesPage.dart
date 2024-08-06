import 'package:event_management/views/utils/ImageUtils.dart';
import 'package:flutter/material.dart';

class MyFavouritesPage extends StatelessWidget {
  const MyFavouritesPage({super.key});

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
              "My Favourites",
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
                      right: h * 0.01, // Adjust these values as needed
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
                              offset: Offset(0, 0), // No offset for even glow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            size: h * 0.024, // Adjust size to fit better
                            color: Color(0xff00B6AA),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                      right: h * 0.01, // Adjust these values as needed
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
                              offset: Offset(0, 0), // No offset for even glow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            size: h * 0.024, // Adjust size to fit better
                            color: Color(0xff00B6AA),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                      right: h * 0.01, // Adjust these values as needed
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
                              offset: Offset(0, 0), // No offset for even glow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            size: h * 0.024, // Adjust size to fit better
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
