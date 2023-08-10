import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavedan_purve_taiyari/purve_tyari_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class PurveTyariPage2 extends StatelessWidget {
  const PurveTyariPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: purveTyariPage2Body(),
    );
  }
}

Widget purveTyariPage2Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      children: [
        verticalSizeBox(20),
        containerCommon(Colors.purpleAccent, "आवेदन पूर्व तैयारियां 2"),
        verticalSizeBox(15),
        documentCard("आधार कार्ड",
            "महिला का स्वयं का बैंक खाता होना अनिवार्य है | संयुक्त खाता मान्य नहीं होगा |",
            image: "asserts/images/aadhaar.jpg"),
        verticalSizeBox(20),
        ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(() => const PurveTyariPage3()),
        )
      ],
    ),
  );
}
