import 'package:codekaze_free_ui_kit/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<HomeController>(
      builder: (_) {
        return Scaffold(
          key: controller.key,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                            ),
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 26.0,
                                  backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/2387335/pexels-photo-2387335.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                  ),
                                ),
                                Positioned(
                                  right: 2.0,
                                  bottom: 2.0,
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 5.0,
                                      backgroundColor: Colors.green,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hello Rock!",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        FlutterIcons.medal_mco,
                                        size: 12.0,
                                        color: Colors.yellow[600],
                                      ),
                                      SizedBox(
                                        width: 6.0,
                                      ),
                                      Text(
                                        "+1000 Points",
                                        style: TextStyle(
                                          color: Colors.yellow[600],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.to(ChatView()),
                            child: Icon(
                              FlutterIcons.chat_mdi,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          InkWell(
                            onTap: () => Get.to(NotificationView()),
                            child: Icon(
                              FlutterIcons.bell_mco,
                              size: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PeoplePicker(
                      id: "online_users",
                      items: controller.onlinePeoples,
                      photoField: "avatar_url",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TitleText(
                      boldText: "Upcoming",
                      text: "course this week",
                    ),
                    CategoryPicker(
                      id: "category",
                      items: controller.categories,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ImageSlider(
                      items: controller.courses,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TitleText(
                      boldText: "Course",
                      text: "Ebook",
                    ),
                    CategoryPicker(
                      id: "category",
                      items: controller.categories,
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
