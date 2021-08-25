import 'package:codekaze_free_ui_kit/core.dart';
import 'package:codekaze_free_ui_kit/module/notification/widget/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationView extends StatelessWidget {
  final controller = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<NotificationController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Notification"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Show all',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(color: Colors.grey)),
                          ),
                          Text(
                            'Mark all as read',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      NotificationItem(
                          title: 'Flutter Basic',
                          description:
                              'Yeay, Congratulations! You have successfully made a payment to access this class. This class will be active forever',
                          image:
                              'https://img.freepik.com/free-vector/computer-monitor-graphic-animator-creating-video-game-modeling-motion-processing-video-file-using-professional-editor-vector-illustration-graphic-design-art-designer-workplace-concept_74855-13038.jpg?size=626&ext=jpg',
                          color: Colors.redAccent),
                      SizedBox(height: 15),
                      NotificationItem(
                          title: 'New Message',
                          description:
                              'Nathan assigned the task to you 12:45 AM',
                          image:
                              'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          color: Colors.blueAccent),
                      SizedBox(
                        height: 15,
                      ),
                      NotificationItem(
                          title: 'New Message',
                          description:
                              'Alexandra assigned the task to you \n04/12/2020, 12:45 AM',
                          image:
                              'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          color: Colors.yellow),
                      SizedBox(
                        height: 15,
                      ),
                      NotificationItem(
                          title: 'New Message',
                          description:
                              'Alexandra assigned the task to you \n04/12/2020, 12:45 AM',
                          image:
                              'https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          color: Colors.green),
                      SizedBox(
                        height: 15,
                      ),
                      NotificationItem(
                          title: 'Design with Figma',
                          description:
                              'Yeay, Congratulations! You have successfully made a payment to access this class. This class will be active forever',
                          image:
                              'https://blogthinkbig.com/wp-content/uploads/sites/4/2017/10/Desktop-Computer-Vector.jpg?fit=800%2C493',
                          color: Colors.orange),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
