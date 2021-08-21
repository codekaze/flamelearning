import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_order_success/controller/ce_order_success_controller.dart';

import 'package:get/get.dart';

class CeOrderSuccessView extends StatelessWidget {
  final controller = Get.put(CeOrderSuccessController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeOrderSuccessController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://i.ibb.co/tqsbh9W/4529164.jpg',
                  width: Get.width / 1.8,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Order Success',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 300,
                  child: Text(
                    'Your packet will be sent to your address, thanks for order.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: CeButton(
                    label: "Back to Home",
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
