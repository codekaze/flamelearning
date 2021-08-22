import 'dart:ui';

import 'package:codekaze_free_ui_kit/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

class AccountView extends StatelessWidget {
  final controller = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<AccountController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            leading: IconProfil(
              iconPath: 'assets/icon/icon_calendar.png',
            ),
            title: Text("Profile"),
            actions: [
              IconProfil(
                iconPath: 'assets/icon/icon_setting.png',
              ),
            ],
          ),
          body: ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Avatar(),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Marjorie Hawkins',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  LabelRow(),
                  SizedBox(
                    height: 16,
                  ),
                  CardInformation(
                    listTileProfile: controller.card1,
                    text: 'INFORMATION',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardInformation(
                    listTileProfile: controller.card2,
                    text: 'SCHOOL LIFE',
                  ),
                  SizedBox(
                    height: 16,
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

class CardInformation extends StatelessWidget {
  final String text;
  final List<Map<String, dynamic>> listTileProfile;
  const CardInformation({
    Key key,
    this.text,
    this.listTileProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AccountController>();
    return CardProfil(
      height: 178,
      width: 343,
      border: 16,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: controller.colorgrey,
                fontSize: 13,
              ),
            ),
            Column(
              children: listTileProfile
                  .map(
                    (e) => ListTileProfile(
                      controller: controller,
                      color: e['color'],
                      icon: e['icon'],
                      name: e['name'],
                      subname: e['subname'],
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

class ListTileProfile extends StatelessWidget {
  final String name;
  final String subname;
  final String icon;
  final Color color;
  const ListTileProfile({
    Key key,
    @required this.controller,
    this.name,
    this.subname,
    this.icon,
    this.color,
  }) : super(key: key);

  final AccountController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: Container(
            child: Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  padding: EdgeInsets.all(5.5),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(icon)
                ),
                SizedBox(width: 16),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Spacer(),
                Text(
                  subname,
                  style: TextStyle(
                    color: controller.colorgrey,
                    fontSize: 17,
                  ),
                ),
                SizedBox(width: 6),
                Transform.rotate(
                  angle: 180 * math.pi / 180,
                  child: Icon(
                    Icons.arrow_back_ios_new
,
                    size: 14,
                    color: Color(0xffD1D1D6),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// label row

class LabelRow extends StatelessWidget {
  const LabelRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonProfil(
          width: 91,
          height: 26,
          label: 'Class: 7B',
          onPressed: () {},
          color: Color(0xff34C759),
        ),
        SizedBox(
          width: 8,
        ),
        ButtonProfil(
          width: 176,
          height: 26,
          label: 'Profile: Maths, Physics',
          onPressed: () {},
          color: Color(0xffAF52DE),
        ),
      ],
    );
  }
}

// Avatar

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardProfil(
      height: 124,
      width: 124,
      border: 124 / 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            "https://images.pexels.com/photos/2387335/pexels-photo-2387335.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          ),
        ),
      ),
    );
  }
}

// Card show

class CardProfil extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final double border;
  const CardProfil({
    Key key,
    this.height,
    this.width,
    this.child,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(border),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 24,
                  offset: Offset(0, 8),
                  spreadRadius: 8)
            ]),
        child: child);
  }
}

// Button

class ButtonProfil extends StatelessWidget {
  final String label;
  final Color color;
  final double width;
  final double height;
  final Function onPressed;

  ButtonProfil({
    this.label,
    this.onPressed,
    this.color,
    this.width,
    this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: color,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

// icon button top

class IconProfil extends StatelessWidget {
  const IconProfil({
    Key key,
    this.iconPath,
  }) : super(key: key);

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
      child: ClipOval(
        child: Material(
          color: Color(0xffFF9500).withOpacity(0.24),
          child: InkWell(
            child: Container(
              margin: EdgeInsets.all(8),
              child: Image.asset(
                iconPath,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
