import 'package:flamelearning_ui_kit/core.dart';
import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  DashboardView view;
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
      Future.delayed(Duration(milliseconds: 1000), () async {
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
