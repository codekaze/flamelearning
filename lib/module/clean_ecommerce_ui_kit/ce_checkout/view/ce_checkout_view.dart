import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/payment_picker/payment_picker.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_checkout/controller/ce_checkout_controller.dart';

import 'package:get/get.dart';

class CeCheckoutView extends StatelessWidget {
  final controller = Get.put(CeCheckoutController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeCheckoutController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Checkout"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  CePaymentPicker(),
                  SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                      children: [
                        CeTextField(
                          label: "Name on Card",
                        ),
                        CeTextField(
                          label: "Card Number",
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CeTextField(
                                label: "Expiration Date",
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: CeTextField(
                                label: "CVC",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    elevation: 0.6,
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.network(
                            "https://image.flaticon.com/icons/png/128/854/854901.png",
                            width: 30.0,
                            height: 30.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Address"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
