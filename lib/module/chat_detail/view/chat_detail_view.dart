import 'package:codekaze_free_ui_kit/core.dart';
import 'package:codekaze_free_ui_kit/module/chat_detail/widget/chat_image.dart';
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
            title: Column(
              children: [
                Text(
                  'Keanu Reeves',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              Container(
                margin: EdgeInsets.all(12.0),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
              )
            ],
          ),
          body: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                  top: 12.0,
                  bottom: 40.0,
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    ...List.generate(controller.chatList.length, (index) {
                      var item = controller.chatList[index];
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (item["is_me"] == false)
                              Container(
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.yellow,
                                      backgroundImage: NetworkImage(
                                        item["sender"]["avatar_url"],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12.0,
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (item["message"].isNotEmpty)
                                              Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 10.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20),
                                                  ),
                                                  color: Colors.grey[300],
                                                ),
                                                padding: EdgeInsets.all(16),
                                                child:
                                                    Text("${item["message"]}"),
                                              ),
                                            ChatImage(
                                              images: item["images"],
                                              isMe: item["is_me"],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 75.0,
                                    ),
                                  ],
                                ),
                              ),
                            if (item["is_me"] == true)
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 75.0,
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                          children: [
                                            if (item["message"].isNotEmpty)
                                              Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 10.0),
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20),
                                                  ),
                                                  color: Colors.green[100],
                                                ),
                                                padding: EdgeInsets.all(16),
                                                child: Text(
                                                  "${item["message"]}",
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ChatImage(
                                              images: item["images"],
                                              isMe: item["is_me"],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.attachment,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Write message...",
                              hintStyle: TextStyle(color: Colors.black54),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 18,
                        ),
                        backgroundColor: Colors.grey,
                        elevation: 0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
