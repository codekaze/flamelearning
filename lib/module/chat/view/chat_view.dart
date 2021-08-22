import 'package:codekaze_free_ui_kit/module/chat_detail/view/chat_detail_view.dart';
import 'package:codekaze_free_ui_kit/module/e_learning/shared/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/chat/controller/chat_controller.dart';

import 'package:get/get.dart';

class ChatView extends StatelessWidget {
  final controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<ChatController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Chat"),
          ),
          body: Column(
            children: [
              Button(
                label: "Chat Detail",
                onPressed: () => Get.to(ChatDetailView()),
              ),
            ],
          ),
        );
      },
    );
  }
}
