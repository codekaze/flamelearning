import 'package:codekaze_free_ui_kit/module/book_list/controller/book_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final controller = Get.find<BookListController>();

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: Get.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          var item = controller.categories[index];
          bool isSelected = selectedIndex == index;
          return InkWell(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 8, right: 8, left: 8),
              width: 120,
              decoration: BoxDecoration(
                color: isSelected ? Colors.red[300] : Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Text(
                '$item',
                style:
                    TextStyle(color: isSelected ? Colors.white : Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}
