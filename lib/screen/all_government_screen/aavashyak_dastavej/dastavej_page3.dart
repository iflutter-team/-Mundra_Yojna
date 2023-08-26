import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavashyak_dastavej/dastavej_page4.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

import '../../home_screen/home_screen_controller.dart';

class DastavejPage3 extends StatelessWidget {
  const DastavejPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (controller) {
          return controller.nativeAd();
        },
      ),
      appBar: mudraPageAppBar(),
      body: dastavejPage3Body(),
    );
  }
}

Widget dastavejPage3Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSizeBox(20),
        requiredDocument("आवश्यक दस्तावेज़ 3"),
        verticalSizeBox(15),
        documentCard("मोबाइल नंबर", "समग्र पोर्टल में दर्ज मोबाइल नंबर",
            image: "asserts/images/mobileicon.png"),
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
            onPressed: () => const DastavejPage4(),
          ),
        )
      ],
    ),
  );
}
