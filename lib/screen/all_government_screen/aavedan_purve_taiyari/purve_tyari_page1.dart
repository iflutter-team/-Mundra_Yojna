import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavedan_purve_taiyari/purve_tyari_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class PurveTyariPage1 extends StatelessWidget {
  const PurveTyariPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: purveTyariPage1Body(),
    );
  }
}

Widget purveTyariPage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      children: [
        verticalSizeBox(20),
        containerCommon(Colors.purpleAccent, "आवेदन पूर्व तैयारियां 1"),
        verticalSizeBox(15),
        documentCard(
          "आधार समग्र e-KYC",
          "समग्र पोर्टल पर आधार के डाटा का ओटीपी या बायोमेट्रिक के माध्यम से मिलान | e-KYC न होने की स्थिति मे आवेदन प्राप्त नहीं किया जायगा |",
          image: "asserts/images/kycicon.jpg",
        ),
        verticalSizeBox(20),
        ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(
            () => const PurveTyariPage2(),
          ),
        )
      ],
    ),
  );
}
