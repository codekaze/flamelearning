import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/button/button.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/category_picker/wrap_category_picker.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_product_category_selector/controller/ce_product_category_selector_controller.dart';

import 'package:get/get.dart';

class CeProductCategorySelectorView extends StatelessWidget {
  final controller = Get.put(CeProductCategorySelectorController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeProductCategorySelectorController>(
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Choose your favorite fashion categories',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'You can choose more than one',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CeWrapCategoryPicker(
                    id: "category",
                    items: controller.categories,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: CeButton(
                      label: "Continue",
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                ],
              )),
            ),
          ),
        );
      },
    );
  }
}
