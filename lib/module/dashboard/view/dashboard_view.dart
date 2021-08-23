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

    return GetBuilder<DashboardController>(
      builder: (_) {
        return Scaffold(
          key: controller.key,
          // bottomNavigationBar: FancyBottomNavigation(
          //   inactiveIconColor: Colors.grey[400],
          //   tabs: [
          //     TabData(
          //       iconData: FlutterIcons.home_ant,
          //       title: "Home",
          //     ),
          //     TabData(
          //       iconData: FlutterIcons.calendar_account_mco,
          //       title: "Course Calendar",
          //     ),
          //     TabData(
          //       iconData: FlutterIcons.book_mco,
          //       title: "Ebook",
          //     ),
          //     TabData(
          //       iconData: FlutterIcons.user_ant,
          //       title: "Me",
          //     ),
          //   ],
          //   onTabChangedListener: (selectedIndex) {
          //     controller.selectedTabIndex = selectedIndex;
          //     controller.update();
          //   },
          // ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (selectedIndex) {
              controller.selectedTabIndex = selectedIndex;
              controller.update();
            },
            currentIndex: controller.selectedTabIndex,
            selectedIconTheme: IconThemeData(
              color: Colors.red[300],
            ),
            selectedItemColor: Colors.red[300],
            unselectedIconTheme: IconThemeData(
              color: Colors.grey[300],
            ),
            unselectedItemColor: Colors.grey[300],
            selectedLabelStyle: TextStyle(
              fontSize: 10.0,
            ),
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(FlutterIcons.home_ant),
              ),
              BottomNavigationBarItem(
                label: "Course Calendar",
                icon: Icon(FlutterIcons.calendar_account_mco),
              ),
              BottomNavigationBarItem(
                label: "Ebook",
                icon: Icon(FlutterIcons.pdf_box_mco),
              ),
              BottomNavigationBarItem(
                label: "Me",
                icon: Icon(FlutterIcons.user_ant),
              ),
            ],
          ),
          body: getMainView(),
        );
      },
    );
  }
}
