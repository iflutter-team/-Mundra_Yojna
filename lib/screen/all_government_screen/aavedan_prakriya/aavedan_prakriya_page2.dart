import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

import 'aavedan_prakriya_page3.dart';

class AavedanPrakriyaPage2 extends StatelessWidget {
  const AavedanPrakriyaPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: aavedanPrakriyaPage2Body(),
    );
  }
}

Widget aavedanPrakriyaPage2Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        verticalSizeBox(10),
        const Text(
          "आवेदन पत्र भरने की सम्पूर्ण प्रक्रिया निःशुल्क होगी। योजना हेतु आवेदन पोर्टल/ मोबाइल ऐप के माध्यम से ऑनलाइन भरे जा सकेंगे।",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        verticalSizeBox(15),
        containerCommon(Colors.deepPurple, "• आवेदन प्रक्रिया •"),
        verticalSizeBox(20),
        cardAllCommon(
            "आवेदन फॉर्म की प्रविष्टि के बाद प्राप्त ऑनलाइन आवेदन क्रमांक को पावती में दर्ज करके आवेदक को दिया जाएगे",
            Colors.orangeAccent),
        verticalSizeBox(20),
        ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(() => const AavedanPrakriyaPage3()),
        )
      ],
    ),
  );
}
