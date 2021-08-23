import 'package:flutter/material.dart';


class OtherPaymentPicker extends StatefulWidget {
  @override
  _OtherPaymentPickerState createState() => _OtherPaymentPickerState();
}

class _OtherPaymentPickerState extends State<OtherPaymentPicker> {
  int selectedIndex = 0;
  List paymentMethodList = [
    {
      "image_url": "https://image.flaticon.com/icons/png/128/893/893081.png",
      "payment_name": "Credit / Debit Card",
    },
    {
      "image_url": "https://image.flaticon.com/icons/png/128/888/888871.png",
      "payment_name": "Paypal",
    },
    {
      "image_url": "https://image.flaticon.com/icons/png/128/4911/4911965.png",
      "payment_name": "Bank Transfer",
    },
    {
      "image_url": "https://image.flaticon.com/icons/png/128/145/145802.png",
      "payment_name": "Facebook Credit",
    },
    {
      "image_url": "https://image.flaticon.com/icons/png/128/5229/5229335.png",
      "payment_name": "Cash on Delivery (COD)",
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Wrap(
          children: List.generate(paymentMethodList.length, (index) {
            var item = paymentMethodList[index];
            bool selected = selectedIndex == index;

            return InkWell(
              onTap: () {
                if (selectedIndex == index) {
                  selectedIndex = -1;
                  setState(() {});
                  return;
                }
                selectedIndex = index;
                setState(() {});
              },
              child: Card(
                color: selected ? Colors.blue[100] : Colors.white,
                elevation: 0.6,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.network(
                        item["image_url"],
                        width: 20.0,
                        height: 20.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(item["payment_name"]),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
