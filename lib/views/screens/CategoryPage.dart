import 'package:event_management/controller/CategoryController.dart';
import 'package:event_management/views/screens/EventDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    final CategoryController categoryController = Get.put(CategoryController());

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
              "Categories",
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
          if (categoryController.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          } else if (categoryController.categories.isEmpty) {
            return Center(
              child: Text(
                'No Categories Found',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          } else {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: h * 0.02,
                mainAxisSpacing: h * 0.02,
              ),
              itemCount: categoryController.categories.length,
              itemBuilder: (context, index) {
                final category = categoryController.categories[index];
                return GestureDetector(
                  onTap: () {
                    Get.to(
                      () => EventDetailsPage(
                        categoryId: category.id,
                        categoryName: category.name,
                      ),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          h * 0.02,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://customize.brainartit.com/event/public/upload/category/${category.image}',
                          ),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          category.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: h * 0.024,
                            color: Colors.white,
                            // backgroundColor: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      )),
                );
              },
            );
          }
        }),
      ),
    );
  }
}
