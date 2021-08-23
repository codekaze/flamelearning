import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../../../core.dart';


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
                    child: Image.asset(icon)),
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
                    Icons.arrow_back_ios_new,
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
