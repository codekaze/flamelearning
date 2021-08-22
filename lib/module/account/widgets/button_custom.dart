import 'package:flutter/material.dart';

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