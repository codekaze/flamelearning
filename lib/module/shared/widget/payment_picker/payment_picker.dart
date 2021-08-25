import 'package:flamelearning_ui_kit/core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentPicker extends StatefulWidget {
  @override
  _CePaymentPickerState createState() => _CePaymentPickerState();
}

class _CePaymentPickerState extends State <PaymentPicker> {
  int selectedIndex = 0;
  List paymentMethodList = [
    {
      "image_url": "https://image.flaticon.com/icons/png/128/893/893081.png",
      "payment_name": "Credit / Debit Card",
      "on_tap": () {},
    },
    {
      "image_url": "https://image.flaticon.com/icons/png/128/888/888871.png",
      "payment_name": "Paypal",
      "on_tap": () {},
    },
    // {
    //   "image_url": "https://image.flaticon.com/icons/png/128/4911/4911965.png",
    //   "payment_name": "Bank Transfer",
    // },
    {
      "image_url": "https://image.flaticon.com/icons/png/128/248/248924.png",
      "payment_name": "Other",
      "on_tap": () {
        Get.to(
          () => OtherPaymentPicker(),
          preventDuplicates: false,
        );
      },
    }
  ];

  getSelectedIndex() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: paymentMethodList.length,
        itemBuilder: (context, index) {
          var item = paymentMethodList[index];
          bool selected = selectedIndex == index;

          return InkWell(
            onTap: () {
              if (selectedIndex == index) {
                selectedIndex = -1;
                setState(() {});
                return;
              }
              selectedIndex = index;
              setState(() {});

              item["on_tap"]();
            },
            child: Card(
              color: selected ? Colors.blue[100] : Colors.white,
              elevation: 0.6,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.network(
                      item["image_url"],
                      width: 30.0,
                      height: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(item["payment_name"]),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
