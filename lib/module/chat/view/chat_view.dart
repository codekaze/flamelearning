import 'package:flamelearning_ui_kit/core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ChatView extends StatelessWidget {
  final controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<ChatController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: Text("Chat"),
            actions: [
              InkWell(
                onTap: () => {},
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Icons.notifications_active),
                ),
              ),
            ],
          ),
          body: Container(
            margin: EdgeInsets.all(20.0),
            child: ListView.builder(
              itemCount: controller.chatList.length,
              itemBuilder: (context, index) {
                var item = controller.chatList[index];
                return Card(
                  elevation: 0.6,
                  child: InkWell(
                    onTap: () => Get.to(() => ChatDetailView()),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                          backgroundImage: NetworkImage(item["avatar_url"]),
                        ),
                        title: Text(
                          item["name"],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(item["last_message"]),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["time"],
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
