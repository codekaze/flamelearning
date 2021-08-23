import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core.dart';

// My Widget :

// ListTile Custom
import 'List_tile_profile.dart';

//Card Profil
import 'card_profil.dart';

class CardInformation extends StatelessWidget {
  final String text;
  final List<Map<String, dynamic>> listTileProfile;
  const CardInformation({
    Key key,
    this.text,
    this.listTileProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AccountController>();
    return CardProfil(
      height: 178,
      width: 343,
      border: 16,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: controller.colorgrey,
                fontSize: 13,
              ),
            ),
            Column(
              children: listTileProfile
                  .map(
                    (e) => ListTileProfile(
                      controller: controller,
                      color: e['color'],
                      icon: e['icon'],
                      name: e['name'],
                      subname: e['subname'],
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}