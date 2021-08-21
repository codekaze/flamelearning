import 'package:flutter/material.dart';

class ProfileBalanceInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: Colors.grey[500],
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Image.network(
                        "https://image.flaticon.com/icons/png/128/3846/3846014.png",
                        height: 28.0,
                        width: 28.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "87.169",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.0,
                              ),
                            ),
                            Text(
                              "Top-up",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                height: 60.0,
                width: 0.2,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Image.network(
                        "https://image.flaticon.com/icons/png/128/2936/2936945.png",
                        height: 28.0,
                        width: 28.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "4 Order(s)",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.0,
                              ),
                            ),
                            Text(
                              "Pending Order(s)",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                height: 60.0,
                width: 0.2,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Image.network(
                        "https://image.flaticon.com/icons/png/128/612/612890.png",
                        height: 28.0,
                        width: 28.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "My Coupons",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.0,
                              ),
                            ),
                            Text(
                              "3 Coupons",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
