import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_account/widget/profile_balance_info.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_account/widget/profile_menu_item.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_account/controller/ce_account_controller.dart';

import 'package:get/get.dart';

class CeAccountView extends StatelessWidget {
  final controller = Get.put(CeAccountController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeAccountController>(
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
