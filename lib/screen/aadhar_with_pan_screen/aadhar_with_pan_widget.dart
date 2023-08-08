import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/aadhar_with_pan_controller.dart';
import 'package:mudra_yojana/utils/string_res.dart';

Widget aadharWithPanScreenView() {
  return GetBuilder<AadharWithPanScreenController>(
    builder: (controller) => Column(
      children: [
        verticalSizeBox(Get.height * 0.070),
        Container(
          height: Get.height * 0.28,
          width: Get.width * 0.91,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        verticalSizeBox(Get.height * 0.030),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: Get.height * 0.40,
            width: Get.width,
            child: const Text(
              StringRes.aadharToPanLinkPage,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        verticalSizeBox(Get.height * 0.012),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              textSize: 25,
              textColor: Colors.white,
              text: 'N E X T',
              color: Colors.red,
              onPressed: () => controller.nextToQuickLinkScreen(),
              minHeight: 55,
              minWidth: Get.width * 0.90,
            ),
          ],
        ),
      ],
    ),
  );
}
