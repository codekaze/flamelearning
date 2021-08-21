import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_account/view/ce_account_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_cart/view/ce_cart_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_dashboard/controller/ce_dashboard_controller.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_favourite/view/ce_favourite_view.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_home/view/ce_home_view.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:get/get.dart';


class CeDashboardView extends StatelessWidget {
  final controller = Get.put(CeDashboardController());

  getMainView() {
    if (controller.selectedTabIndex == 0) {
      return CeHomeView();
    } else if (controller.selectedTabIndex == 1) {
      return CeCartView();
    } else if (controller.selectedTabIndex == 2) {
      return CeFavouriteView();
    } else if (controller.selectedTabIndex == 3) {
      return CeAccountView();
    }
  }

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeDashboardController>(
      builder: (_) {
        return Scaffold(
          key: controller.key,
          bottomNavigationBar: FancyBottomNavigation(
            inactiveIconColor: Colors.grey[400],
            tabs: [
              TabData(
                iconData: FlutterIcons.home_ant,
                title: "Home",
              ),
              TabData(
                iconData: FlutterIcons.shopping_basket_mdi,
                title: "Cart",
              ),
              TabData(
                iconData: FlutterIcons.favorite_mdi,
                title: "Favourite",
              ),
              TabData(
                iconData: FlutterIcons.user_ant,
                title: "Me",
              ),
            ],
            onTabChangedListener: (selectedIndex) {
              controller.selectedTabIndex = selectedIndex;
              controller.update();
            },
          ),
          body: getMainView(),
        );
      },
    );
  }
}
