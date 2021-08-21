import 'dart:io';

import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_dashboard/view/ce_dashboard_view.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CeDashboardController extends GetxController {
  CeDashboardView view;
  GlobalKey<ScaffoldState> key = GlobalKey();
  int selectedTabIndex = 0;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    if (Platform.isWindows) {
      Future.delayed(Duration(milliseconds: 500), () async {
        await DesktopWindow.setWindowSize(Size(420, 860));
        update();
      });
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
