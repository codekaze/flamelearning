import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WrapCategoryPicker extends StatefulWidget {
  final String id;
  final List items;
  final Function onSelected;
  final int selectedIndex;

  WrapCategoryPicker({
    this.id,
    this.items,
    this.onSelected,
    this.selectedIndex,
  });

  @override
  _CeWrapCategoryPickerState createState() => _CeWrapCategoryPickerState();
}

class _CeWrapCategoryPickerState extends State <WrapCategoryPicker> {
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
            Container(
              child: Wrap(
                children: List.generate(widget.items.length, (index) {
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
                    child: Card(
                      color: selectedIndex == index
                          ? Colors.grey[700]
                          : Colors.white,
                      elevation: 0.6,
                      child: Container(
                        width: (Get.width / 2) - 40,
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        child: Center(
                          child: Text(
                            "$item",
                            style: TextStyle(
                              color:
                                  selectedIndex == index ? Colors.white : null,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
