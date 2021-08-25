import 'package:flamelearning_ui_kit/core.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  ChatView view;

  List chatList = [
    {
      "name": "Danniel Radclife",
      "avatar_url":
          "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
      "last_message": "Thanks for the update",
      "time": "10:04",
    },
    {
      "name": "May",
      "avatar_url":
          "https://images.unsplash.com/photo-1516756587022-7891ad56a8cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
      "last_message": "Hehe, ok",
      "time": "09:04",
    },
    {
      "name": "Jessica Jane",
      "avatar_url":
          "https://images.unsplash.com/photo-1446511437394-36cdff3ae1b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "last_message": "Hi, can u check your email",
      "time": "08:22",
    },
    {
      "name": "Keanue Reeve",
      "avatar_url":
          "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "last_message": "I've pushed the update",
      "time": "1 Day Ago",
    },
    {
      "name": "Donnie Yen",
      "avatar_url":
          "https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "last_message": "Ok, i`ll back",
      "time": "1 Day Ago",
    }
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
