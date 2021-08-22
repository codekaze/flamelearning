import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/book_detail/controller/book_detail_controller.dart';

import 'package:get/get.dart';

class BookDetailView extends StatelessWidget {
  final controller = Get.put(BookDetailController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<BookDetailController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Book Detail"),
          ),
        );
      },
    );
  }
}
