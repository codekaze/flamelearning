import 'package:codekaze_free_ui_kit/module/book_detail/view/book_detail_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/book_list/controller/book_list_controller.dart';

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
          body: Column(
            children: [
              CeButton(
                label: "Open Detail",
                onPressed: () => Get.to(BookDetailView()),
              ),
            ],
          ),
        );
      },
    );
  }
}
