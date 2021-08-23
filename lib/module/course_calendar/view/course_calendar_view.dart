import 'package:codekaze_free_ui_kit/core.dart';
import 'package:codekaze_free_ui_kit/module/course_calendar/widget/date_selector.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/course_calendar/controller/course_calendar_controller.dart';

import 'package:intl/intl.dart';

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
          body: Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    DateFormat.d().format(DateTime.now()),
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    DateFormat.EEEE().format(DateTime.now()),
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                  Text(
                                    (DateFormat.yMMM().format(DateTime.now())),
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Today",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
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
              ),
              DateSelector(
                items: [
                  {
                    "course_name": "English",
                    "sub_title": "Part 5 : Causative Verbs",
                    "room_name": "Room A - 201",
                    "start_time": "10.00",
                    "end_time": "11:30",
                    "author": {
                      "name": "Bevelyn C.",
                      "avatar_url":
                          "https://images.unsplash.com/photo-1629316464107-ec2702d7e10c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80",
                    },
                  },
                  {
                    "course_name": "Science",
                    "sub_title": "Part 6 : Human Genetics",
                    "room_name": "Room B - 202",
                    "start_time": "13:30",
                    "end_time": "15:00",
                    "author": {
                      "name": "George Leonard",
                      "avatar_url":
                          "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                    },
                  },
                  {
                    "course_name": "Social Studies",
                    "sub_title": "Part 4 : World History",
                    "room_name": "Room D - 301",
                    "start_time": "15:30",
                    "end_time": "16:30",
                    "author": {
                      "name": "Johan Bridge",
                      "avatar_url":
                          "https://images.unsplash.com/photo-1629473728190-c9a984fed794?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=332&q=80",
                    },
                  }
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
