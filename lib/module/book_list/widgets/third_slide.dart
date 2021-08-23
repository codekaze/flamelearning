import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core.dart';

class ThirdSlide extends StatelessWidget {
  final controller = Get.find<BookListController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              'Health',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Text(
                'View All',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
          ],
        ),
        Container(
          width: Get.width,
          height: Get.height / 2 - 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.thirdSlide.length,
            itemBuilder: (context, index) {
              var item = controller.thirdSlide[index];
              return InkWell(
                onTap: () {
                  Get.to(BookDetailView());
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8, right: 16),
                      height: Get.height / 3,
                      width: Get.width / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            item['image_url'],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: Get.width / 3,
                      child: Text(
                        item['title'],
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
