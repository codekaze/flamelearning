import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CeColorPicker extends StatefulWidget {
  final String id;
  final String label;
  final List items;
  final Function onSelected;
  final int selectedIndex;

  CeColorPicker({
    this.id,
    this.label,
    this.items,
    this.onSelected,
    this.selectedIndex,
  });

  @override
  _CeColorPickerState createState() => _CeColorPickerState();
}

class _CeColorPickerState extends State<CeColorPicker> {
  int selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex ?? -1;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${widget.label}:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 40.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  var item = widget.items[index];
                  return InkWell(
                    onTap: () {
                      if (selectedIndex == index) {
                        selectedIndex = -1;
                      } else {
                        selectedIndex = index;
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        backgroundColor: item,
                        child: index == selectedIndex
                            ? Icon(FlutterIcons.check_ant)
                            : null,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
