import 'package:flutter/material.dart';

import 'package:date_picker_timeline/date_picker_timeline.dart';

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

  final DatePickerController _controller = DatePickerController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Container(
        height: 500,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: DatePicker(
                      DateTime.now(),
                      width: 60,
                      height: 90,
                      controller: _controller,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: Colors.red,
                      selectedTextColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
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
                                child: Column(
                                  children: [
                                    if (index == 0)
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Time",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 35,
                                                ),
                                                Text(
                                                  "Course",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.format_line_spacing,
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                        ],
                                      ),
                                    if (index == 0)
                                      SizedBox(
                                        height: 15,
                                      ),
                                    IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                item["start_time"],
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                item["end_time"],
                                                style: TextStyle(
                                                  color: Colors.grey[400],
                                                ),
                                              ),
                                            ],
                                          ),
                                          VerticalDivider(
                                            width: 30,
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                                bottom: 5,
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                  left: 15,
                                                  top: 20,
                                                  right: 15,
                                                  bottom: 20,
                                                ),
                                                width: 250,
                                                decoration: BoxDecoration(
                                                  color: isSelected
                                                      ? Colors.green
                                                      : Colors.grey[100],
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          item["course_name"],
                                                          style: TextStyle(
                                                            color: isSelected
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          onTap: () {},
                                                          child: Icon(
                                                            Icons.more_vert,
                                                            size: 20,
                                                            color: isSelected
                                                                ? Colors.white
                                                                : Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          item["sub_title"],
                                                          style: TextStyle(
                                                            color: isSelected
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .location_on_outlined,
                                                          size: 16,
                                                          color: isSelected
                                                              ? Colors.white
                                                              : Colors.black,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          item["room_name"],
                                                          style: TextStyle(
                                                            color: isSelected
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 8,
                                                          backgroundImage:
                                                              NetworkImage(
                                                            item["author"]
                                                                ["avatar_url"],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          item["author"]
                                                              ["name"],
                                                          style: TextStyle(
                                                            color: isSelected
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (index == 2)
                                      SizedBox(
                                        height: 30,
                                      ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
