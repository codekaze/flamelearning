import 'package:codekaze_free_ui_kit/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeView view;
  GlobalKey<ScaffoldState> key = GlobalKey();

  List categories = [
    "All",
    "UI/UX",
    "Illustration",
    "3D Animation",
    "Programming",
    "AI",
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
    {
      "name": "James Barley",
      "avatar_url":
          "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "status": "Offline",
    },
    {
      "name": "Nancy Quite",
      "avatar_url":
          "https://images.pexels.com/photos/4098157/pexels-photo-4098157.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "status": "Offline",
    },
  ];

  List courses = [
    {
      "title": "Step design sprint for beginner",
      "image_url":
          "https://images.unsplash.com/photo-1541560052-3744e48ab80b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fG1vYmlsZSUyMGhhbmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "duration": "5h 21m",
      "main_tags": "Free Course",
      "tags": [
        {
          "label": "6 Lessons",
          "color": Colors.blue[400],
        },
        {
          "label": "Free",
          "color": Colors.blue[900],
        },
        {
          "label": "UI/UX",
          "color": Colors.purple[500],
        }
      ],
      "author": {
        "name": "James Barley",
        "avatar_url":
            "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "status": "Offline",
        "job_name": "Product Designer",
      },
    },
    {
      "title": "Flutter Basic",
      "image_url":
          "https://images.unsplash.com/photo-1541560052-3744e48ab80b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fG1vYmlsZSUyMGhhbmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "duration": "2h 11m",
      "main_tags": "Free Course",
      "tags": [
        {
          "label": "10 Lessons",
          "color": Colors.blue[400],
        },
        {
          "label": "Free",
          "color": Colors.blue[900],
        },
        {
          "label": "Flutter",
          "color": Colors.purple[500],
        }
      ],
      "author": {
        "name": "Rika Tetsuya",
        "avatar_url":
            "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "status": "Offline",
        "job_name": "Mobile Developer",
      },
    }
  ];

  List ebooks = [
    {
      "title": "Practical Flutter",
      "image_url": "https://i.ibb.co/xGjJnmc/pdf.jpg",
      "main_tags": "Free Ebook",
      "tags": [
        {
          "label": "Dart",
          "color": Colors.blue[400],
        },
        {
          "label": "Free",
          "color": Colors.blue[900],
        },
        {
          "label": "Flutter",
          "color": Colors.purple[500],
        }
      ],
      "author": {
        "name": "Frank Zammeti",
        "avatar_url":
            "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      },
    },
    {
      "title": "Flutter Cookbook",
      "image_url": "https://i.ibb.co/P4GWqsk/517g-Skn-T9-HS-SY445-SX342-QL70-ML2.jpg",
      "main_tags": "Free Ebook",
      "tags": [
        {
          "label": "Dart",
          "color": Colors.blue[400],
        },
        {
          "label": "Free",
          "color": Colors.blue[900],
        },
        {
          "label": "Flutter",
          "color": Colors.purple[500],
        }
      ],
      "author": {
        "name": "Simone Alessandria",
        "avatar_url":
            "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      },
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
