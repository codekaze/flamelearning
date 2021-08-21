import 'package:flutter/material.dart';
import 'package:codekaze_free_ui_kit/module/clean_ecommerce_ui_kit/ce_intro/controller/ce_intro_controller.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class CeIntroView extends StatelessWidget {
  final controller = Get.put(CeIntroController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CeIntroController>(
      builder: (_) {
        return Scaffold(
            body: SafeArea(
          child: IntroductionScreen(
            pages: controller.listPagesViewModel(),
            done: const Text("Done",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
            showNextButton: true,
            next: Text(
              'Next',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            onDone: () {
              // When done button is press
              Get.back();
            },
          ),
        ));
      },
    );
  }
}
