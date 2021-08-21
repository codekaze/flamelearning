import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_dashboard/view/ce_dashboard_view.dart';
import 'package:codekaze_free_ui_kit/module/main_dashboard/controller/main_dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainDashboardView extends StatelessWidget {
  final controller = Get.put(MainDashboardController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<MainDashboardController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: Text(
              "Main Dashboard",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Premium UI KIT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Get.dialog(
                    CeDashboardView(),
                    useSafeArea: false,
                  ),
                  child: Card(
                    elevation: 0.6,
                    child: Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Clean Ecommerce UI KIT Dashboard"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Free UI KIT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
