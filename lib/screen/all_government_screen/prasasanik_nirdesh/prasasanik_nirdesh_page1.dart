import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/prasasanik_nirdesh/prasasanik_nirdesh_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class PrasasnikNirdeshPage1 extends StatelessWidget {
  const PrasasnikNirdeshPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          minHeight: Get.height * 0.065,
          onPressed: () => const PrasasnikNirdeshPage2(),
        ),
      ),
      appBar: mudraPageAppBar(),
      body: prasasanikNirdeshScreenView(),
    );
  }
}

Widget prasasanikNirdeshScreenView() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSizeBox(15),
          containerCommon(Colors.orangeAccent, '• प्रसन्निक निर्देश •'),
          verticalSizeBox(Get.height * 0.030),
          cardAllCommon(StringRes.prasasanikNirdeshPart1, Colors.pinkAccent),
          verticalSizeBox(Get.height * 0.020),
          cardAllCommon(StringRes.prasasanikNirdeshPart2, Colors.deepPurple),
        ],
      ),
    ),
  );
}
