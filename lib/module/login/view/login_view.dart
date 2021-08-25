import 'package:flamelearning_ui_kit/core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: Get.width / 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    'https://icons.iconarchive.com/icons/rockettheme/ecommerce/128/shop-icon.png',
                    width: 100,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Log in to C-Commerce',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Sign Up',
                          style:
                              TextStyle(color: Colors.red[300], fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SocialMediaList(),
                  SizedBox(
                    height: 30,
                  ),
                  ExTextField(
                    label: 'Email',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ExTextField(
                    label: 'Password',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Button(
                    label: "Login",
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class SocialMediaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaIcon(
          onPressed: () {},
          color: Colors.blue[900],
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png',
        ),
        SizedBox(width: 15),
        SocialMediaIcon(
          onPressed: () {},
          color: Colors.red[400],
          imageUrl:
              'https://www.freeiconspng.com/thumbs/google-plus-logo/google-plus-logo-4.png',
        ),
        SizedBox(width: 15),
        SocialMediaIcon(
          onPressed: () {},
          color: Colors.grey,
          imageUrl:
              'http://www.pngplay.com/wp-content/uploads/3/Black-Apple-Logo-PNG-Images-HD.png',
        ),
      ],
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final Color color;
  final String imageUrl;
  final VoidCallback onPressed;

  const SocialMediaIcon({Key key, this.color, this.imageUrl, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Image.network(
        imageUrl,
        height: 16,
        width: 16,
      ),
    );
  }
}
