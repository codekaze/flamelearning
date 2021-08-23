import 'package:codekaze_free_ui_kit/core.dart';
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
          appBar: AppBar(
            title: Text("Chat"),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.notifications_active))
            ],
          ),
          body: Container(
            margin: EdgeInsets.all(5),
            child: ListView(
              children: [
                Card(
                  child: InkWell(
                    onTap: () => Get.to(() => ChatDetailView()),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                        title: Text(
                          'Si Kampret',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('This is last Chat'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2 week',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () => Get.to(() => ChatDetailView()),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                        title: Text(
                          'Si Asu',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('This is last Chat'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2 week',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () => Get.to(() => ChatDetailView()),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                        title: Text(
                          'Si Kampret',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('This is last Chat'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2 week',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
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
