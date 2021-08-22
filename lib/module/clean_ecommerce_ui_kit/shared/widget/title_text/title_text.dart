import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String boldText;
  final String text;

  TitleText({
    this.boldText,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          if (boldText != null)
            Text(
              "$boldText ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          Text(
            "$text",
            style: TextStyle(
                // fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
