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
        );
      },
    );
  }
}
