import 'package:codekaze_free_ui_kit/core.dart';
import 'package:flutter/material.dart';

class FirstSlide extends StatelessWidget {
  final controller = Get.find<BookListController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: Get.height / 2,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.red[300]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Psychology',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'The best collection for you',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Container(
            width: Get.width,
            height: Get.height / 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.firstSlide.length,
              itemBuilder: (context, index) {
                var item = controller.firstSlide[index];
                return InkWell(
                  onTap: () {
                    Get.to(BookDetailView());
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                    height: Get.height,
                    width: Get.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          '$item',
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
