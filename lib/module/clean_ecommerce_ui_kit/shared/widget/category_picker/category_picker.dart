import 'package:flutter/material.dart';

class CeCategoryPicker extends StatefulWidget {
  final String id;
  final String label;
  final List items;
  final Function onSelected;
  final int selectedIndex;

  CeCategoryPicker({
    this.id,
    this.label,
    this.items,
    this.onSelected,
    this.selectedIndex,
  });

  @override
  _CeCategoryPickerState createState() => _CeCategoryPickerState();
}

class _CeCategoryPickerState extends State<CeCategoryPicker> {
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
                      margin: EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? Colors.grey[600]
                            : Colors.grey[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
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
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
