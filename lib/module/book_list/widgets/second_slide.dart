import 'package:flamelearning_ui_kit/core.dart';
import 'package:flutter/material.dart';

class SecondSlide extends StatelessWidget {
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
              'Education',
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
            itemCount: controller.secondSlide.length,
            itemBuilder: (context, index) {
              var item = controller.secondSlide[index];
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
                      width: Get.width / 2,
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
                      child: Text(
                        item['title'],
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
