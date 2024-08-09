import 'package:event_management/views/routes/AppRoutes.dart';
import 'package:event_management/views/utils/ImageUtils.dart';
import 'package:event_management/views/utils/VarUtils.dart';
import 'package:event_management/views/utils/listUtils/ProfilePageList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageUtils.ImagePath + ImageUtils.ProfilePageBG,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(
                  h * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: h * 0.026,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.08,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                image: NetworkImage(
                                    "https://customize.brainartit.com/event/public/upload/profile/" +
                                        VarUtils.userProfile),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          VarUtils.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: h * 0.024,
                          ),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          VarUtils.email,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: h * 0.016,
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.EDITPROFILE);
                          },
                          child: Container(
                            height: h * 0.04,
                            width: w * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(h * 0.02),
                              color: Colors.black.withOpacity(0.5),
                            ),
                            padding: EdgeInsets.all(
                              h * 0.01,
                            ),
                            child: Center(
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: h * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(h * 0.04),
                    topRight: Radius.circular(h * 0.04),
                  ),
                  color: Color(0xff131B31),
                ),
                padding: EdgeInsets.all(h * 0.02),
                child: ListView.builder(
                  itemCount: profilePageList.length,
                  itemBuilder: (context, index) {
                    final item = profilePageList[index];
                    return ListTile(
                      onTap: item['onTap'],
                      leading: Icon(
                        item['icon'],
                        color: Color(0xff00B6AA),
                      ),
                      title: Text(
                        item['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
