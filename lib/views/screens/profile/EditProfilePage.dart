import 'dart:io';
import 'package:event_management/views/utils/ImageUtils.dart';
import 'package:event_management/views/utils/VarUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:event_management/controller/EditProfileController.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final EditProfileController controller = Get.put(EditProfileController());
    double h = MediaQuery.of(context).size.height;

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
              "Edit Profile",
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Center(
                      child: Container(
                        height: h * 0.14,
                        width: h * 0.14,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          image: DecorationImage(
                            image: controller.profileImage.value != null
                                ? FileImage(controller.profileImage.value!)
                                : VarUtils.userProfile.isNotEmpty
                                ? NetworkImage(
                                "https://customize.brainartit.com/event/public/upload/profile/" +
                                    VarUtils.userProfile)
                                : AssetImage(
                              ImageUtils.ImagePath + ImageUtils.SelectOptionBG,
                            ) as ImageProvider,
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 120,
                      child: GestureDetector(
                        onTap: () async {
                          final image = await ImagePicker().pickImage(source: ImageSource.gallery);
                          if (image != null) {
                            controller.profileImage.value = File(image.path);
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff1E0040),
                                Color(0xffF600AB),
                              ],
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(height: h * 0.02),
              buildTextField(
                label: "First Name",
                hintText: 'Enter First Name',
                controller: controller.nameController,
                icon: Icons.person,
              ),
              SizedBox(height: h * 0.02),
              buildTextField(
                label: "Email",
                hintText: 'Enter Email',
                controller: controller.emailController,
                icon: Icons.email,
              ),
              SizedBox(height: h * 0.02),
              buildTextField(
                label: "Phone",
                hintText: 'Enter Phone Number',
                controller: controller.phoneController,
                icon: Icons.call,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: h * 0.08,
        padding: EdgeInsets.all(h * 0.01),
        child: GestureDetector(
          onTap: () {
            controller.updateProfile();
          },
          child: Container(
            height: h * 0.06,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff1E0040),
                  Color(0xffF600AB),
                ],
              ),
              borderRadius: BorderRadius.circular(h * 0.026),
            ),
            child: Center(
              child: Text(
                "Update Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: h * 0.023,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField({
    required String label,
    required String hintText,
    required TextEditingController controller,
    required IconData icon,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          SizedBox(height: 8.0),
          TextField(
            controller: controller,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(icon, color: Color(0xff00B6AA)),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
            ),
          ),
        ],
      ),
    );
  }
}
