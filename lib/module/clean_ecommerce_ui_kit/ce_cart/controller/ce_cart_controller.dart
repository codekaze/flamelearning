import 'package:get/get.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_cart/view/ce_cart_view.dart';

class CeCartController extends GetxController {
  CeCartView view;

  List cartItems = [
    {
      "product_name": "Dan's Jacket",
      "image_url":
          "https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 310,
      "qty": 2,
    },
    {
      "product_name": "Elisa Navv",
      "image_url":
          "https://images.pexels.com/photos/7242760/pexels-photo-7242760.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 210,
      "qty": 1,
    },
    {
      "product_name": "Nobara Clothe's",
      "image_url":
          "https://images.pexels.com/photos/5480696/pexels-photo-5480696.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 260,
      "qty": 2,
    },
    {
      "product_name": "Sparrow's Set'",
      "image_url":
          "https://images.pexels.com/photos/5372767/pexels-photo-5372767.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 1220,
      "qty": 2,
    },
    {
      "product_name": "Adibas Set",
      "image_url":
          "https://images.pexels.com/photos/1192601/pexels-photo-1192601.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 225,
      "qty": 1,
    },
    {
      "product_name": "Dororo's Queen",
      "image_url":
          "https://images.pexels.com/photos/6025220/pexels-photo-6025220.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 300,
      "qty": 1,
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
