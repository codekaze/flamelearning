import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotificationItem extends StatelessWidget {
  NotificationItem({
    Key key,
    @required this.title,
    @required this.description,
    @required this.image,
    @required this.color,
  }) : super(key: key);

  final String title;
  final String description;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: color,
          icon: Icons.delete,
          onTap: () {},
        ),
      ],
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 5)
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: double.infinity,
                        width: 5,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 15, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(title,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 50.0,
                                backgroundImage: NetworkImage(image),
                              ),
                              Flexible(
                                child: Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    description,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Center(
                            child: TextButton(
                              child: Text('View More'),
                              onPressed: () {},
                            ),
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
    );
  }
}
