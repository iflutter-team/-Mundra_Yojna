import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavedan_prakriya/aavedan_prakriya_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class AavedanPrakriyaPage1 extends StatelessWidget {
  const AavedanPrakriyaPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: aavedanPrakriyaPage1Body(),
    );
  }
}

Widget aavedanPrakriyaPage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      children: [
        verticalSizeBox(10),
        const Text(
          "आवेदन पत्र भरने की सम्पूर्ण प्रक्रिया निःशुल्क होगी। योजना हेतु आवेदन पोर्टल/ मोबाइल ऐप के माध्यम से ऑनलाइन भरे जा सकेंगे।",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        verticalSizeBox(15),
        containerCommon(Colors.deepPurple, "• आवेदन प्रक्रिया •"),
        verticalSizeBox(15),
        cardAllCommon(
            "आवेदन फॉर्म की प्रविष्टि के दौरान महिला का फोटो लिया जाएगा",
            Colors.purple),
        verticalSizeBox(15),
        ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(() => const AavedanPrakriyaPage2()),
        )
      ],
    ),
  );
}
