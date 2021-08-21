import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_product_detail/view/ce_product_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_favourite/controller/ce_favourite_controller.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:get/get.dart';

class CeFavouriteView extends StatelessWidget {
  final controller = Get.put(CeFavouriteController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeFavouriteController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Favourite",
            ),
            actions: [
              InkWell(
                onTap: () {
                  controller.favouriteItems.clear();
                  controller.update();
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(FlutterIcons.delete_sweep_mdi),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: ListView.builder(
                itemCount: controller.favouriteItems.length,
                itemBuilder: (text, index) {
                  var item = controller.favouriteItems[index];

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
                                  controller.favouriteItems.remove(item);
                                  controller.update();
                                },
                                child: Icon(FlutterIcons.trash_evi),
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
