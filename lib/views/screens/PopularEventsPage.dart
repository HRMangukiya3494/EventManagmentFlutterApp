import 'package:event_management/controller/PopularEventController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularEventsPage extends StatelessWidget {
  const PopularEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    final PopularEventController eventsController = Get.put(
      PopularEventController(),
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
              "Popular Events",
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
      body: Obx(() {
        if (eventsController.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (eventsController.hasError.value) {
          return Center(
            child: Text(eventsController.errorMessage.value),
          );
        } else {
          return Padding(
            padding: EdgeInsets.all(h * 0.02),
            child: SingleChildScrollView(
              child: Column(
                children: eventsController.upcomingEvents.map((event) {
                  return Container(
                    margin: EdgeInsets.only(bottom: h * 0.02),
                    height: h * 0.32,
                    width: double.infinity,
                    padding: EdgeInsets.all(h * 0.01),
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
                                  image: NetworkImage(event.image),
                                  // Use the URL for the event image
                                  fit: BoxFit.cover,
                                ),
                              ),
                              padding: EdgeInsets.all(h * 0.01),
                            ),
                            Text(
                              event.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: h * 0.024,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "${event.day} • ${event.dateTime}",
                              style: TextStyle(
                                color: Color(0xff00B6AA),
                                fontSize: h * 0.018,
                              ),

                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "📌 ${event.location}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.3),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
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
                              color: Colors.white.withOpacity(0.18),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff00B6AA).withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 6,
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
                  );
                }).toList(),
              ),
            ),
          );
        }
      }),
    );
  }
}
