import 'package:codekaze_free_ui_kit/core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CourseCalendarView extends StatelessWidget {
  final controller = Get.put(CourseCalendarController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CourseCalendarController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Course Calendar"),
          ),
          body: Column(
            children: [
              Container(
                height: 140.0,
                color: Colors.green,
              ),
              Expanded(
                child: SelectList(
                  items: [
                    {
                      "course_name": "Matemathics",
                      "sub_title": "Chapter 1: Introduction",
                      "room_name": "Room 6-205",
                      "start_time": "11:35",
                      "end_time": "13:05",
                      "author": {
                        "name": "James Barley",
                        "avatar_url":
                            "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      },
                    },
                    {
                      "course_name": "Matemathics",
                      "sub_title": "Chapter 1: Introduction",
                      "room_name": "Room 6-205",
                      "start_time": "11:35",
                      "end_time": "13:05",
                      "author": {
                        "name": "James Barley",
                        "avatar_url":
                            "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      },
                    },
                    {
                      "course_name": "Matemathics",
                      "sub_title": "Chapter 1: Introduction",
                      "room_name": "Room 6-205",
                      "start_time": "11:35",
                      "end_time": "13:05",
                      "author": {
                        "name": "James Barley",
                        "avatar_url":
                            "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      },
                    }
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
