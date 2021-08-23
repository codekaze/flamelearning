import 'package:flutter/material.dart';

class ExTextField extends StatelessWidget {
  final String id;
  final String label;

  ExTextField({
    this.id,
    this.label,
  });

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label"),
          SizedBox(
            height: 6.0,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 12.0,
              bottom: 12.0,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            child: TextField(
              controller: textEditingController,
              decoration: InputDecoration.collapsed(
                hintText: label,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
