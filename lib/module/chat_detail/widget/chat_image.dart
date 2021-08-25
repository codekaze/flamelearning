import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatImage extends StatelessWidget {
  final List images;
  final bool isMe;
  ChatImage({
    this.images = const [],
    this.isMe = false,
  });

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) return Container();

    if (images.length == 1)
      return Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            width: Get.width / 2.1,
            height: 200,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(images[0]),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
        ],
      );

    if (images.length == 2)
      return Container(
        child: Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 200,
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(images[0]),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 200,
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(images[1]),
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ],
        ),
      );

    if (images.length >= 3)
      return Container(
        child: Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(images[0]),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 100,
                  height: 95,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[1]),
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Container(
                  width: 100,
                  height: 95,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[2]),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
