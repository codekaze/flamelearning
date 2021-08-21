import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_checkout/view/ce_checkout_view.dart';

import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_product_detail/view/ce_product_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_cart/controller/ce_cart_controller.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:get/get.dart';

class CeCartView extends StatelessWidget {
  final controller = Get.put(CeCartController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeCartController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Cart",
            ),
            actions: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(FlutterIcons.tune_mco),
                ),
              ),
            ],
          ),
          // bottomNavigationBar: Container(
          //   height: 100.0,
          //   color: Colors.transparent,
          //   margin: EdgeInsets.only(right: 10.0),
          //   child: Row(
          //     children: [
          //       Spacer(),
          //     ],
          //   ),
          // ),
          floatingActionButton: InkWell(
            onTap: () => Get.to(
              () => CeCheckoutView(),
              preventDuplicates: false,
            ),
            child: Card(
              color: Colors.red[300],
              child: Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Text(
                  "Checkout",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.cartItems.length,
                itemBuilder: (text, index) {
                  var item = controller.cartItems[index];

                  return InkWell(
                    onTap: () => Get.to(
                      () => CeProductDetailView(
                        item: item,
                      ),
                      preventDuplicates: false,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100.0,
                          width: 100.0,
                          margin: EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item["image_url"],
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["product_name"],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  "\$${item["price"]}",
                                  style: TextStyle(
                                    color: Colors.red[300],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  item["qty"] -= 1;
                                  controller.update();
                                },
                                child: Icon(
                                  FlutterIcons.minus_circle_faw,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "${item["qty"]}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              InkWell(
                                onTap: () {
                                  item["qty"] += 1;
                                  controller.update();
                                },
                                child: Icon(
                                  FlutterIcons.add_circle_mdi,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
