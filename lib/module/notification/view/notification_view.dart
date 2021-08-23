import 'package:codekaze_free_ui_kit/core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
        );
      },
    );
  }
}