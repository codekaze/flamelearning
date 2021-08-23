import 'package:codekaze_free_ui_kit/core.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  final controller = Get.put(DashboardController());

  getMainView() {
    if (controller.selectedTabIndex == 0) {
      return HomeView();
    } else if (controller.selectedTabIndex == 1) {
      return CourseCalendarView();
    } else if (controller.selectedTabIndex == 2) {
      return BookListView();
    } else if (controller.selectedTabIndex == 3) {
      return AccountView();
    }
  }

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder <DashboardController>(
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
                iconData: FlutterIcons.calendar_account_mco,
                title: "Course Calendar",
              ),
              TabData(
                iconData: FlutterIcons.book_mco,
                title: "Ebook",
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
