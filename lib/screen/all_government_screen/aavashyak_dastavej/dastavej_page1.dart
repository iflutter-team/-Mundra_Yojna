import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavashyak_dastavej/dastavej_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class DastavejPage1 extends StatelessWidget {
  const DastavejPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: dastavejPage1Body(),
    );
  }
}

Widget dastavejPage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSizeBox(20),
        requiredDocument("आवश्यक दस्तावेज़ 1"),
        verticalSizeBox(15),
        documentCard("समग्र परिवार / सदस्य आई.डी.",
            "समग्र पोर्टल द्वारा जारी परिवार आईडी अथवा सदस्य आईडी",
            image: "asserts/images/kycicon.jpg"),
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
            onPressed: () => const DastavejPage2(),
          ),
        )
      ],
    ),
  );
}
