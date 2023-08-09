import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavashyak_dastavej/dastavej_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class DastavejPage2 extends StatelessWidget {
  const DastavejPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: dastavejPage2Body(),
    );
  }
}

Widget dastavejPage2Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSizeBox(20),
        requiredDocument("आवश्यक दस्तावेज़ 2"),
        verticalSizeBox(15),
        documentCard("आधार कार्ड", "UIDAI द्वारा जारी फ़ोटो आईडी"),
        verticalSizeBox(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: ButtonWidget(
            text: "आगे बढे",
            textColor: Colors.white,
            textSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
            minHeight: Get.height * 0.065,
            onPressed: () => Get.to(() => const DastavejPage3()),
          ),
        )
      ],
    ),
  );
}
