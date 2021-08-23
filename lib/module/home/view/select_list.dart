import 'package:flutter/material.dart';

class SelectList extends StatefulWidget {
  final List items;
  SelectList({
    this.items,
  });

  @override
  _SelectListState createState() => _SelectListState();
}

class _SelectListState extends State<SelectList> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          var item = widget.items[index];

          bool isSelected = selectedIndex == index;

          return InkWell(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: Container(
              height: 140.0,
              margin: EdgeInsets.only(bottom: 10.0),
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    width: 50.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item["start_time"]),
                        Text(item["end_time"]),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.red : Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(item["course_name"]),
                          Text(item["sub_title"]),
                          Text(item["room_name"]),
                          Text(item["author"]["name"]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
