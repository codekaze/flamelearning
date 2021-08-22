import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class ImageSlider extends StatefulWidget {
  final List items;

  ImageSlider({
    @required this.items,
  });

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        controller: scrollController,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          var item = widget.items[index];

          return Stack(
            children: [
              Container(
                height: 250.0,
                margin: EdgeInsets.only(right: 10.0),
                width: Get.width / 1.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: NetworkImage(
                      item["image_url"],
                    ),
                    fit: BoxFit.cover,
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
                  gradient: new LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.black54,
                        /*AppColours.appgradientfirstColour,
                    AppColours.appgradientsecondColour*/
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.5, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
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
                          Text(
                            item["title"],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                FlutterIcons.timer_mco,
                                color: Colors.grey[300],
                                size: 14.0,
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                item["duration"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                  fontSize: 8.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: List.generate(item["tags"].length, (d) {
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2.0)),
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
                          SizedBox(
                            height: 8.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    radius: 16.0,
                                    backgroundImage: NetworkImage(
                                      "https://images.pexels.com/photos/2387335/pexels-photo-2387335.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item["author"]["name"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2.0,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              item["author"]["job_name"],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
