import 'package:codekaze_free_ui_kit/core.dart';
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
          body: Column(
            children: [
              Button(
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
