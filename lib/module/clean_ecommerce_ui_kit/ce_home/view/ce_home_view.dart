import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_cart_empty/view/ce_cart_empty_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_home/controller/ce_home_controller.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_home/view/select_list.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_intro/view/ce_intro_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_login/view/ce_login_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_order_success/view/ce_order_success_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_product_category_selector/view/ce_product_category_selector_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_product_detail/view/ce_product_detail_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/category_picker/category_picker.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/image_slider/image_slider.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/people_picker/people_picker.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/title_text/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:get/get.dart';

class CeHomeView extends StatelessWidget {
  final controller = Get.put(CeHomeController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeHomeController>(
      builder: (_) {
        return Scaffold(
          key: controller.key,
          // drawer: Drawer(
          //   child: ListView(
          //     padding: EdgeInsets.zero,
          //     children: [
          //       DrawerHeader(
          //         decoration: BoxDecoration(
          //           color: Colors.red[300],
          //           image: DecorationImage(
          //             fit: BoxFit.fill,
          //             image: NetworkImage(
          //               "https://digitalsynopsis.com/wp-content/uploads/2017/07/beautiful-color-ui-gradients-backgrounds-roseanna.png",
          //             ),
          //           ),
          //         ),
          //         child: Text(
          //           'C-Commerce v1.0',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 16.0,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       ),
          //       ListTile(
          //         title: const Text('Codekaze Dashboard'),
          //         onTap: () {
          //           Get.back();
          //         },
          //       ),
          //       Divider(),
          //       ListTile(
          //         title: const Text('Login'),
          //         onTap: () {
          //           Get.to(CeLoginView());
          //         },
          //       ),
          //       ListTile(
          //         title: const Text('Product Category Selector'),
          //         onTap: () {
          //           Get.to(CeProductCategorySelectorView());
          //         },
          //       ),
          //       ListTile(
          //         title: const Text('Intro Page'),
          //         onTap: () {
          //           Get.to(CeIntroView());
          //         },
          //       ),
          //       ListTile(
          //         title: const Text('Order Success Page'),
          //         onTap: () {
          //           Get.to(CeOrderSuccessView());
          //         },
          //       ),
          //       ListTile(
          //         title: const Text('Cart Empty Page'),
          //         onTap: () {
          //           Get.to(CeCartEmptyView());
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                            ),
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 26.0,
                                  backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/2387335/pexels-photo-2387335.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                  ),
                                ),
                                Positioned(
                                  right: 2.0,
                                  bottom: 2.0,
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 5.0,
                                      backgroundColor: Colors.green,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hello Rock!",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        FlutterIcons.medal_mco,
                                        size: 12.0,
                                        color: Colors.yellow[600],
                                      ),
                                      SizedBox(
                                        width: 6.0,
                                      ),
                                      Text(
                                        "+1000 Points",
                                        style: TextStyle(
                                          color: Colors.yellow[600],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Icon(
                            FlutterIcons.bell_mco,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    CePeoplePicker(
                      id: "online_users",
                      items: controller.onlinePeoples,
                      photoField: "avatar_url",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TitleText(
                      boldText: "Upcoming",
                      text: "course this week",
                    ),
                    CeCategoryPicker(
                      id: "category",
                      items: controller.categories,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ImageSlider(
                      items: controller.courses,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TitleText(
                      boldText: "Course",
                      text: "Ebook",
                    ),
                    CeCategoryPicker(
                      id: "category",
                      items: controller.categories,
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Container(
                      child: Wrap(
                        runSpacing: 20.0,
                        spacing: 20.0,
                        children: List.generate(
                          controller.products.length,
                          (index) {
                            var item = controller.products[index];

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () => Get.to(
                                    () => CeProductDetailView(
                                      item: item,
                                    ),
                                    preventDuplicates: false,
                                  ),
                                  child: Container(
                                    height: 200.0,
                                    width: (Get.width / 2) - 30,
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
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child: CircleAvatar(
                                            radius: 16.0,
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              FlutterIcons.favorite_mdi,
                                              color: Colors.red[300],
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
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
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
