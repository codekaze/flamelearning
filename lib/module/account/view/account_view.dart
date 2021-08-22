import 'package:codekaze_free_ui_kit/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// My Widget :

// Card
import '../widgets/card_information.dart';

// label row
import '../widgets/label_row.dart';

// No Scroll Glow
import '../../shared/widget/no_scroll_glow/no_scroll_glow.dart';

// Avatar
import '../widgets/avatar.dart';

// Icon appbar profil
import '../widgets/icon_appbar.dart';

class AccountView extends StatelessWidget {
  final controller = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<AccountController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Color(0xffF3F5F9),
          appBar: AppBar(
            leading: IconProfil(
              iconPath: 'assets/icon/icon_calendar.png',
            ),
            title: Text("Profile"),
            actions: [
              IconProfil(
                iconPath: 'assets/icon/icon_setting.png',
              ),
            ],
          ),
          body: ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Avatar(),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Marjorie Hawkins',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  LabelRow(),
                  SizedBox(
                    height: 16,
                  ),
                  CardInformation(
                    listTileProfile: controller.card1,
                    text: 'INFORMATION',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardInformation(
                    listTileProfile: controller.card2,
                    text: 'SCHOOL LIFE',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// Card show


