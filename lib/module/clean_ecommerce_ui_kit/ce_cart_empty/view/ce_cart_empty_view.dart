import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_cart_empty/controller/ce_cart_empty_controller.dart';

import 'package:get/get.dart';

class CeCartEmptyView extends StatelessWidget {
  final controller = Get.put(CeCartEmptyController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeCartEmptyController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://i.ibb.co/681s7hp/3298067.jpg',
                width: Get.width / 1.8,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Empty Basket',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                child: Text(
                  'Your basket is still empty, browse the attractive promos from CE',
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
                  label: "Shopping Now",
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
