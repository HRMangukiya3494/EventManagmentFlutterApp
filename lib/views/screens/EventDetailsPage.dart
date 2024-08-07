import 'package:event_management/controller/EventController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventDetailsPage extends StatelessWidget {
  final int categoryId;
  final String categoryName;

  const EventDetailsPage({
    required this.categoryId,
    required this.categoryName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    final EventController eventController = Get.put(
      EventController(),
    );

    eventController.fetchEventsByCategory(categoryId);

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
              categoryName,
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
        padding: EdgeInsets.all(h * 0.02),
        child: Obx(() {
          if (eventController.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          } else if (eventController.events.isEmpty) {
            return Center(
              child: Text(
                'No Events Found',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: eventController.events.length,
              itemBuilder: (context, index) {
                final event = eventController.events[index];
                return Container(
                  height: h * 0.14,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(h * 0.012),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  padding: EdgeInsets.all(h * 0.01),
                  margin: EdgeInsets.symmetric(vertical: h * 0.01),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: double.infinity,
                        width: w * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(h * 0.014),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://customize.brainartit.com/event/public/upload/event/${event.image}',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.04,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              event.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: h * 0.022,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: h * 0.01),
                            Text(
                              event.place ?? 'No place specified',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(
                                  0xff00B6AA,
                                ),
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        }),
      ),
    );
  }
}
