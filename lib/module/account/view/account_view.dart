import 'package:codekaze_free_ui_kit/core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AccountView extends StatelessWidget {
  final controller = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder <AccountController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("My Account"),
          ),
        );
      },
    );
  }
}
