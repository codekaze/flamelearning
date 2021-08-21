import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_cart_empty/view/ce_cart_empty_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_home/controller/ce_home_controller.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_intro/view/ce_intro_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_login/view/ce_login_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_order_success/view/ce_order_success_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_product_category_selector/view/ce_product_category_selector_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_product_detail/view/ce_product_detail_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/category_picker/category_picker.dart';
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
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Text(
              "Dashboard",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              icon: Icon(
                FlutterIcons.sort_variant_mco,
                size: 30.0,
                color: Colors.black,
              ),
              onPressed: () => controller.key.currentState.openDrawer(),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red[300],
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        "https://digitalsynopsis.com/wp-content/uploads/2017/07/beautiful-color-ui-gradients-backgrounds-roseanna.png",
                      ),
                    ),
                  ),
                  child: Text(
                    'C-Commerce v1.0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Codekaze Dashboard'),
                  onTap: () {
                    Get.back();
                  },
                ),
                Divider(),
                ListTile(
                  title: const Text('Login'),
                  onTap: () {
                    Get.to(CeLoginView());
                  },
                ),
                ListTile(
                  title: const Text('Product Category Selector'),
                  onTap: () {
                    Get.to(CeProductCategorySelectorView());
                  },
                ),
                ListTile(
                  title: const Text('Intro Page'),
                  onTap: () {
                    Get.to(CeIntroView());
                  },
                ),
                ListTile(
                  title: const Text('Order Success Page'),
                  onTap: () {
                    Get.to(CeOrderSuccessView());
                  },
                ),
                ListTile(
                  title: const Text('Cart Empty Page'),
                  onTap: () {
                    Get.to(CeCartEmptyView());
                  },
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://i.ibb.co/T4wFLpN/1248.jpg",
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    CeCategoryPicker(
                      id: "category",
                      label: "Category",
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
