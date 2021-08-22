import 'package:flutter/material.dart';

// My Widget :

// Button
import 'button_custom.dart';

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