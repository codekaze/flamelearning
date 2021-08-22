import 'package:flutter/material.dart';

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