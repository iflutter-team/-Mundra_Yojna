import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/gridView_controller.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class KnowYourAO extends StatelessWidget {
  const KnowYourAO({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GridViewController());
    return Scaffold(
      floatingActionButton: GetBuilder<GridViewController>(
        id: "KnowYourAO",
        builder: (controller) {
          return ButtonWidget(
            textSize: 25,
            textColor: Colors.white,
            text: 'N E X T',
            color: Colors.red,
            onPressed: () => controller.knowYourAO(),
            minHeight: 55,
            minWidth: Get.width * 0.90,
          );
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Know Your A.O.',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ePayTaxScreen(),
    );
  }
}

Widget ePayTaxScreen() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        verticalSizeBox(Get.height * 0.030),
        cardAllCommon(StringRes.knowYourAO, Colors.deepPurple),
        verticalSizeBox(Get.height * 0.40),
      ],
    ),
  );
}
