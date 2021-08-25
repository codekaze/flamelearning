import 'package:flamelearning_ui_kit/core.dart';
import 'package:get/get.dart';

class ChatDetailController extends GetxController {
  ChatDetailView view;
  List chatList = [
    {
      "message": "Can you check your email?",
      "images": [],
      "time": "10:02",
      "is_me": false,
      "sender": {
        "name": "Keanue Reeve",
        "avatar_url":
            "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      }
    },
    {
      "message": "",
      "images": [
        "https://images.unsplash.com/photo-1522720833375-9c27ffb02a5e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZpc2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1513039464749-94912b3841ce?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGZpc2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1521584934521-f27ac11b7523?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGZpc2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      ],
      "time": "10:02",
      "is_me": true,
    },
    {
      "message": "Yes. i have check it. Thanks for your update!",
      "images": [],
      "time": "10:02",
      "is_me": true,
    },
    {
      "message": "This jelly fish is awesome",
      "images": [
        "https://images.unsplash.com/photo-1489615705977-faf56742020e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGZpc2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      ],
      "time": "10:02",
      "is_me": true,
    },
    {
      "message": "I have one!",
      "images": [
        "https://images.unsplash.com/photo-1543007168-5fa9b3c5f5fb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fGZpc2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      ],
      "time": "10:02",
      "is_me": false,
      "sender": {
        "name": "Keanue Reeve",
        "avatar_url":
            "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      }
    },
    {
      "message": "Haha, Cool!",
      "images": [
        "https://images.unsplash.com/photo-1495012379376-194a416fcc5f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTd8fGZpc2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1605876168868-6d7aa0e9109a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODV8fGZpc2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      ],
      "time": "10:02",
      "is_me": true,
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
