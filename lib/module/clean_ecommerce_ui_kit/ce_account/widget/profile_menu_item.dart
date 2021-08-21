import 'package:flutter/material.dart';

class ProfileMenuItemIcon {
  static String view =
      "https://image.flaticon.com/icons/png/128/2767/2767893.png";
  static String edit =
      "https://image.flaticon.com/icons/png/128/833/833275.png";
}

class ProfileMenuItem extends StatelessWidget {
  final String label;
  final String subLabel;
  final Function onTap;
  final String iconUrl;
  final Color iconColor;

  ProfileMenuItem({
    this.label,
    this.subLabel,
    this.onTap,
    this.iconUrl,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    var icon = iconUrl;
    if (icon == null) {
      icon = ProfileMenuItemIcon.view;
    }

    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.only(
          top: 10.0,
          bottom: 10.0,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.0,
              color: Colors.grey[200],
            ),
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$label",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "$subLabel",
                  style: TextStyle(
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.network(
              "$icon",
              width: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
