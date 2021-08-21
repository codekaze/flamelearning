import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_intro/view/ce_intro_view.dart';
import 'package:introduction_screen/introduction_screen.dart';

class CeIntroController extends GetxController {
  CeIntroView view;
  List<PageViewModel> listPagesViewModel() {
    return [
      PageViewModel(
        title: "Latest Outfit",
        body: "There are many new outfits that make you cool!",
        image: Center(
          child: Image.network(
            "https://image.freepik.com/free-vector/female-friends-enjoying-shopping-together_74855-7345.jpg",
            width: Get.width / 1.1,
          ),
        ),
      ),
      PageViewModel(
        title: "Up to 70% Off + Voucher 23% Off",
        body: "There are a lot of discount and voucher that you can get here!",
        image: Center(
          child: Image.network(
            "https://image.freepik.com/free-vector/discount-concept-illustration_114360-1852.jpg",
            width: Get.width / 1.1,
          ),
        ),
      ),
      PageViewModel(
        title: "World Shipping",
        body: "We ready to send your outfits everywhere you want!",
        image: Center(
          child: Image.network(
            "https://image.freepik.com/free-vector/transportation-merchandise-logistic-cargo-cartoon_18591-52476.jpg",
            width: Get.width / 1.1,
          ),
        ),
      ),
    ];
  }

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
