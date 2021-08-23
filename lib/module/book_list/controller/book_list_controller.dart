import 'package:codekaze_free_ui_kit/core.dart';
import 'package:get/get.dart';

class BookListController extends GetxController {
  BookListView view;
  List categories = [
    'Education',
    'Fiction',
    'Law',
    'Architecture',
    'Health',
    'Audio',
    'Family',
    'Lifestyle'
        'Accounting'
  ];

  List firstSlide = [
    'https://image.freepik.com/free-vector/couple-long-distance-relationship_23-2149021052.jpg',
    'https://image.freepik.com/free-vector/receiving-sending-love-emails-long-distance-relationship-isometric-phones-with-hearts-flat-design-illustration_255881-421.jpg',
    'https://image.freepik.com/free-vector/society-isometric-concept-with-tiny-characters-living-routine-people-using-gadgets-engage-sports-activity-communicate-internet-networks-studying-working-3d-line-art-illustration_107791-3588.jpg',
    'https://image.freepik.com/free-vector/isometric-flat-crowd-people-different-teens-adults-stand-talk-make-phone-call-listen-music-society-members-3d-isometry-concept_126523-2699.jpg',
    'https://image.freepik.com/free-vector/men-women-who-show-love-each-other_1150-40765.jpg'
  ];
  List secondSlide = [
    {
      "title": "Fly With Dreams",
      "image_url":
          "https://image.freepik.com/free-photo/open-flying-old-books_1232-2096.jpg"
    },
    {
      "title": "The Power of Brain",
      "image_url":
          "https://image.freepik.com/free-vector/head-profile-with-gears_98292-387.jpg"
    },
    {
      "title": "Machine Learning",
      "image_url":
          "https://img.freepik.com/free-vector/isometric-flat-vector-concept-machine-learning-ai_109064-927.jpg?size=338&ext=jpg"
    },
    {
      "title": "Infinity AI Power",
      "image_url":
          "https://image.freepik.com/free-vector/artificial-intelligence-robots-cyborg-with-infinity-symbol_107791-4668.jpg"
    },
    {
      "title": "Digital Education",
      "image_url":
          "https://image.freepik.com/free-vector/digital-education-logo-template-vector-with-ai-brain-graphic_53876-125991.jpg"
    },
  ];
  List thirdSlide = [
    {
      "title": "Healthy Mind",
      "image_url":
          "https://image.freepik.com/free-vector/world-mental-health-day-flat-illustration_23-2148642502.jpg"
    },
    {
      "title": "Solution for Mental Problem",
      "image_url":
          "https://image.freepik.com/free-vector/hand-drawn-illustrations-people-with-mental-health-problems_23-2149048909.jpg"
    },
    {
      "title": "Mental Awareness",
      "image_url":
          "https://image.freepik.com/free-vector/mental-health-awareness-concept_23-2148531010.jpg"
    },
    {
      "title": "Learn Psy Theraphy",
      "image_url":
          "https://image.freepik.com/free-vector/flat-mental-health-instagram-post_23-2149036129.jpg"
    },
    {
      "title": "Love Yourself",
      "image_url":
          "https://image.freepik.com/free-vector/psychological-help-landing-page_23-2148671701.jpg"
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
