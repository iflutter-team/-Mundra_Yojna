import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_screen_2.dart';
import 'package:mudra_yojana/utils/asset_res.dart';

Widget mudraPage1() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          height: Get.height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(AssetRes.mudraHome),
        ),
        verticalSizeBox(10),
        Text(
          "प्रधानमंत्री मुद्रा योजना",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.purple.shade300),
        ),
        verticalSizeBox(15),
        const Text(
          "पूंजी सफलता की कुंज्",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        verticalSizeBox(5),
        ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(() => const MudraPage2()),
        )
      ],
    ),
  );
}
