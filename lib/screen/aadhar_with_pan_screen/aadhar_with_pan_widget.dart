import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/aadhar_with_pan_controller.dart';

Widget aadharWithPanScreenView() {
  return GetBuilder<AadharWithPanScreenController>(
    builder: (controller) => Column(
      children: [
        Row(
          children: [
            ButtonWidget(
              textColor: Colors.black,
              text: 'NEXT',
              color: Colors.cyanAccent,
              onPressed: () {},
              minHeight: 55,
              minWidth: Get.width * 0.90,
            ),
          ],
        ),
      ],
    ),
  );
}
