import 'package:flutter/material.dart';

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
            onTap: (){},
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