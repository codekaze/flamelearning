import 'package:flamelearning_ui_kit/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookSlider extends StatefulWidget {
  final List items;
  final double height;
  final double width;

  BookSlider({
    @required this.items,
    this.width,
    this.height,
  });

  @override
  _BookSliderState createState() => _BookSliderState();
}

class _BookSliderState extends State<BookSlider> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width ?? 80.0,
      height: widget.height ?? 300.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        controller: scrollController,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          var item = widget.items[index];

          return InkWell(
            onTap: () => Get.to(BookDetailView()),
            child: Container(
              height: widget.height ?? 250.0,
              width: widget.width ?? (Get.width / 1.8),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: widget.height ?? 250.0,
                        margin: EdgeInsets.only(right: 10.0),
                        width: widget.width ?? (Get.width / 1.5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: NetworkImage(
                              item["image_url"],
                            ),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                      Container(
                        height: 250.0,
                        margin: EdgeInsets.only(right: 10.0),
                        width: Get.width / 1.5,
                        decoration: BoxDecoration(
                          // color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(8.0),
                              child: Card(
                                color: Colors.orange,
                                child: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    item["main_tags"],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    children:
                                        List.generate(item["tags"].length, (d) {
                                      var tag = item["tags"][d];
                                      return Container(
                                        padding: EdgeInsets.only(
                                          left: 4.0,
                                          right: 4.0,
                                          top: 2.0,
                                          bottom: 2.0,
                                        ),
                                        margin: EdgeInsets.only(right: 6.0),
                                        decoration: BoxDecoration(
                                          color: tag["color"],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.0)),
                                        ),
                                        child: Text(
                                          "${tag["label"]}",
                                          style: TextStyle(
                                            fontSize: 6.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    item["author"]["name"],
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    item["title"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
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
