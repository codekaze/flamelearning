import 'package:codekaze_free_ui_kit/core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ChatDetailView extends StatelessWidget {
  final controller = Get.put(ChatDetailController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<ChatDetailController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Chat Detail"),
          ),
        );
      },
    );
  }
}
