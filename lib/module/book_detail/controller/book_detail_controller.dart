import 'package:codekaze_free_ui_kit/core.dart';
import 'package:get/get.dart';

class BookDetailController extends GetxController {
  BookDetailView view;
  List similarBooks = [
    {
      "title": "Mental Awareness",
      "image_url":
          "https://image.freepik.com/free-vector/mental-health-awareness-concept_23-2148531010.jpg"
    },
    {
      "title": "Digital Education",
      "image_url":
          "https://image.freepik.com/free-vector/digital-education-logo-template-vector-with-ai-brain-graphic_53876-125991.jpg"
    },
    {
      "title": "Fly With Dreams",
      "image_url":
          "https://image.freepik.com/free-photo/open-flying-old-books_1232-2096.jpg"
    },
    {
      "title": "Infinity AI Power",
      "image_url":
          "https://image.freepik.com/free-vector/artificial-intelligence-robots-cyborg-with-infinity-symbol_107791-4668.jpg"
    },
    {
      "title": "Learn Psy Theraphy",
      "image_url":
          "https://image.freepik.com/free-vector/flat-mental-health-instagram-post_23-2149036129.jpg"
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
