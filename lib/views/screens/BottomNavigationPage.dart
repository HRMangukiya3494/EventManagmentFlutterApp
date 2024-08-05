import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:event_management/controller/BottomNavController.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController(), permanent: true);

    return Scaffold(
      body: Obx(() {
        return Center(
          child: Text(
            'Selected Index: ${controller.currentIndex.value}',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        );
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
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
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
}