import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_home/view/ce_home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CeHomeController extends GetxController {
  CeHomeView view;
  GlobalKey<ScaffoldState> key = GlobalKey();

  List categories = [
    "All",
    "Top Sales",
    "Hot",
    "Women",
    "Men",
  ];

  List onlinePeoples = [
    {
      "name": "Michael Sparrow",
      "avatar_url":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "status": "Online",
    },
    {
      "name": "Kizaru Sniffman",
      "avatar_url":
          "https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "status": "Online",
    },
    {
      "name": "Rika Tetsuya",
      "avatar_url":
          "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "status": "Offline",
    },
  ];

  List products = [
    {
      "product_name": "Dan's Jacket",
      "image_url":
          "https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 310,
    },
    {
      "product_name": "Elisa Navv",
      "image_url":
          "https://images.pexels.com/photos/7242760/pexels-photo-7242760.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 210,
    },
    {
      "product_name": "Nobara Clothe's",
      "image_url":
          "https://images.pexels.com/photos/5480696/pexels-photo-5480696.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 260,
    },
    {
      "product_name": "Sparrow's Set'",
      "image_url":
          "https://images.pexels.com/photos/5372767/pexels-photo-5372767.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 1220,
    },
    {
      "product_name": "Adibas Set",
      "image_url":
          "https://images.pexels.com/photos/1192601/pexels-photo-1192601.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 225,
    },
    {
      "product_name": "Dororo's Queen",
      "image_url":
          "https://images.pexels.com/photos/6025220/pexels-photo-6025220.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 3000,
    },
  ];

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
