import 'package:event_management/views/screens/BookingsPage.dart';
import 'package:event_management/views/screens/HomePage.dart';
import 'package:event_management/views/screens/MyFavouritesPage.dart';
import 'package:event_management/views/screens/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:event_management/controller/BottomNavController.dart';

class BottomNavigationPage extends StatelessWidget {
  BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController(), permanent: true);

    return Scaffold(
      body: Obx(() {
        return _pages[controller.currentIndex.value];
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: (index) => controller.changeIndex(index),
          selectedItemColor: Color(0xFF00B6AA),
          unselectedItemColor: Colors.white.withOpacity(0.38),
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF0B1521),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favourites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        );
      }),
    );
  }
  final List<Widget> _pages = [
    HomePage(),
    MyFavouritesPage(),
    BookingsPage(),
    ProfilePage(),
  ];
}