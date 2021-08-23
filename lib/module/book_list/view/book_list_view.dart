import 'package:codekaze_free_ui_kit/core.dart';
import 'package:codekaze_free_ui_kit/module/book_list/widgets/categories.dart';
import 'package:codekaze_free_ui_kit/module/book_list/widgets/first_slide.dart';
import 'package:codekaze_free_ui_kit/module/book_list/widgets/second_slide.dart';
import 'package:codekaze_free_ui_kit/module/book_list/widgets/third_slide.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BookListView extends StatelessWidget {
  final controller = Get.put(BookListController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<BookListController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Book List"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Categories(),
                  FirstSlide(),
                  SecondSlide(),
                  ThirdSlide(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
