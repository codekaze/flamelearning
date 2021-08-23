import 'package:codekaze_free_ui_kit/core.dart';
<<<<<<< HEAD
=======
import 'package:flutter/material.dart';
>>>>>>> 02d5792e0dddbb211294ba26fb158c9bc4c8e518
import 'package:get/get.dart';

class AccountController extends GetxController {
  AccountView view;

<<<<<<< HEAD
=======
  final Color colorgrey = Color(0xff3C3C43).withOpacity(0.6);
  List<Map<String, dynamic>> card1 = [
    {
      'name': 'Marks',
      'subname': 'Average: 8.9',
      'color': Color(0xffFF9500),
      'icon': 'assets/icon/icon_thumup.png',
    },
    {
      'name': 'Debts',
      'subname': 'None',
      'color': Color(0xffFF3B30),
      'icon': 'assets/icon/icon_fire.png',
    },
    {
      'name': 'History',
      'subname': '',
      'color': Color(0xff34C759),
      'icon': 'assets/icon/icon_time.png',
    },
  ];

  List<Map<String, dynamic>> card2 = [
    {
      'name': 'News',
      'subname': '',
      'color': Color(0xff546CF6),
      'icon': 'assets/icon/icon_compas.png',
    },
    {
      'name': 'Teachers',
      'subname': '',
      'color': Color(0xff546CF6),
      'icon': 'assets/icon/icon_peoples.png',
    },
    {
      'name': 'Rools',
      'subname': '',
      'color': Color(0xff546CF6),
      'icon': 'assets/icon/icon_shield.png',
    },
  ];

>>>>>>> 02d5792e0dddbb211294ba26fb158c9bc4c8e518
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
