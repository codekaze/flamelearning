import 'package:flutter/material.dart';

class CePeoplePicker extends StatefulWidget {
  final String id;
  final String label;
  final List items;
  final Function onSelected;
  final int selectedIndex;

  final String photoField;

  CePeoplePicker({
    this.id,
    this.label,
    this.items,
    this.onSelected,
    this.selectedIndex,
    this.photoField,
  });

  @override
  _CePeoplePickerState createState() => _CePeoplePickerState();
}

class _CePeoplePickerState extends State<CePeoplePicker> {
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
            if (widget.label != null)
              Text(
                "${widget.label}:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            if (widget.label != null)
              SizedBox(
                height: 10.0,
              ),
            Container(
              height: 80.0,
              padding: EdgeInsets.symmetric(vertical: 10.0),
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
                      width: 60.0,
                      padding: EdgeInsets.all(3.0),
                      margin: EdgeInsets.only(
                        right: 8.0,
                        left: 2.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                item["avatar_url"],
                              ),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                        ),
                      ),
                    ),
                    // child: Container(
                    //   margin: EdgeInsets.only(right: 6.0),
                    //   child: CircleAvatar(
                    //     backgroundColor: item["status"] == "Online"
                    //         ? Colors.green
                    //         : Colors.grey[300],
                    //     radius: 32.0,
                    //     child: CircleAvatar(
                    //       radius: 28.0,
                    //       backgroundColor: Colors.white,
                    //       child: CircleAvatar(
                    //         radius: 26.0,
                    //         backgroundImage: NetworkImage(
                    //           item["avatar_url"],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
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
