import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_product_detail/controller/ce_product_detail_controller.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/category_picker/category_picker.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/color_picker/color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

class CeProductDetailView extends StatelessWidget {
  final controller = Get.put(CeProductDetailController());

  final Map item;
  CeProductDetailView({
    @required this.item,
  });

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeProductDetailController>(
      builder: (_) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    FlutterIcons.favorite_mdi,
                    color: Colors.red[300],
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 90.0,
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 32.0,
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    FlutterIcons.cart_plus_faw,
                    color: Colors.red[300],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    ),
                    child: Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Get.height / 3.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        item["image_url"],
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item["product_name"],
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Category: Women",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  RatingBar.builder(
                                    initialRating: 4,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 24.0,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "\$${item["price"]}",
                            style: TextStyle(
                              color: Colors.red[300],
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      CeCategoryPicker(
                        id: "size",
                        label: "Size",
                        items: controller.sizeList,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      CeColorPicker(
                        id: "color",
                        label: "Color",
                        items: controller.colorList,
                      ),
                    ],
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
