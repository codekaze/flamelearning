import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  final String label;
  final Function onPressed;

  Button({
    this.label,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.red[300],
      ),
      child: TextButton(
        child: Text(
          '$label',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}
