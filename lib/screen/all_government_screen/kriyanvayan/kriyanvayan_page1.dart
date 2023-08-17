import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/kriyanvayan/kriyanvayan_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class KriyanVayanPage1 extends StatelessWidget {
  const KriyanVayanPage1({super.key});

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
          onPressed: () => const KriyanVayanPage2(),
        ),
      ),
      appBar: mudraPageAppBar(),
      body: kriyanVayanScreenView(),
    );
  }
}

Widget kriyanVayanScreenView() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSizeBox(15),
          containerCommon(Colors.orangeAccent, '• क्रियान्वयन •'),
          verticalSizeBox(Get.height * 0.030),
          cardAllCommon(StringRes.KriyanVayanPart1, Colors.pinkAccent),
          verticalSizeBox(Get.height * 0.020),
          cardAllCommon(StringRes.KriyanVayanPart2, Colors.teal),
          verticalSizeBox(Get.height * 0.020),
          cardAllCommon(StringRes.KriyanVayanPart3, Colors.limeAccent),
          verticalSizeBox(Get.height * 0.020),
          cardAllCommon(StringRes.KriyanVayanPart4, Colors.pinkAccent),
          verticalSizeBox(Get.height * 0.020),
          cardAllCommon(StringRes.KriyanVayanPart5, Colors.indigo),
          verticalSizeBox(Get.height * 0.020),
          cardAllCommon(StringRes.KriyanVayanPart6, Colors.tealAccent),
          verticalSizeBox(Get.height * 0.020),
          cardAllCommon(StringRes.KriyanVayanPart7, Colors.purpleAccent),
        ],
      ),
    ),
  );
}
