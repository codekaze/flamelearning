import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_account/widget/profile_balance_info.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_account/widget/profile_menu_item.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/shared/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_account/controller/ce_account_controller.dart';

import 'package:get/get.dart';

class CeAccountView extends StatelessWidget {
  final controller = Get.put(CeAccountController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeAccountController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("My Account"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 40,
                          backgroundImage: NetworkImage(
                            "https://image.flaticon.com/icons/png/128/3667/3667250.png",
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Uzumaki Itachi",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: [
                                  Image.network(
                                    "https://image.flaticon.com/icons/png/128/3649/3649801.png",
                                    width: 20.0,
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text("Premium Member"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ProfileBalanceInfo(),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Account Setting",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        ProfileMenuItem(
                          label: "Edit Profile",
                          subLabel: "Your Personal Data",
                          iconUrl: ProfileMenuItemIcon.edit,
                        ),
                        ProfileMenuItem(
                          label: "Addresses",
                          subLabel: "Your Addresses",
                          iconUrl: ProfileMenuItemIcon.edit,
                        ),
                        ProfileMenuItem(
                          label: "Payment Method",
                          subLabel: "Your Payment Method",
                          iconUrl: ProfileMenuItemIcon.edit,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Customer Care",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        ProfileMenuItem(
                          label: "Live Chat",
                          subLabel: "Live Chat with Customer Care",
                        ),
                        ProfileMenuItem(
                          label: "About us",
                          subLabel: "Get to know more about us",
                        ),
                        ProfileMenuItem(
                          label: "FAQ",
                          subLabel: "Frequently Asked Questions",
                        ),
                        ProfileMenuItem(
                          label: "Privacy Policy",
                          subLabel: "Read our Privacy Policy",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    width: Get.width,
                    child: CeButton(
                      label: "Logout",
                      onPressed: () {},
                    ),
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
