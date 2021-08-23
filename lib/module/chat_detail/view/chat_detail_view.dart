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
            title: Column(
              children: [
                Text(
                  'Si asu',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'online terus g bales chat',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                )
              ],
            ),
            actions: [
              Container(
                margin: EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                ),
              )
            ],
          ),
          body: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 50, right: 10),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.yellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      color: Colors.white),
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    'this is our chat',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                              Text('03:00 PM')
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: 100,
                                  height: 200,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ))),
                              Column(
                                children: [
                                  Container(
                                      width: 100,
                                      height: 95,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10)))),
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Container(
                                      width: 100,
                                      height: 95,
                                      decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(10)))),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      color: Colors.grey.shade100),
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    'attrractive people come from super power, ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.done),
                                  Text('03:00 PM'),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          color: Colors.grey.shade100),
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            height: 70,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20)),
                                                color: Colors.blue.shade200),
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.all(10),
                                                  width: 40,
                                                  color: Colors.amberAccent,
                                                ),
                                                Text(
                                                    'reply seperti ini seperti konten yang asli')
                                              ],
                                            ),
                                          ),
                                          Text(
                                            'its Fun ',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.done_all),
                                  Text('03:00 PM'),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: 100,
                                  height: 200,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ))),
                              Column(
                                children: [
                                  Container(
                                      width: 100,
                                      height: 95,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10)))),
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Container(
                                      width: 100,
                                      height: 95,
                                      decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(10)))),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      color: Colors.grey.shade100),
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    'attrractive people come from super power, ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.done),
                                  Text('03:00 PM'),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
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
