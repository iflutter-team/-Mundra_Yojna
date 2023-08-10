import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/gopniyta/gopniyta_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class GopNiytaPage1 extends StatelessWidget {
  const GopNiytaPage1({super.key});

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
          onPressed: () => Get.to(
            () => const GopNiytaPage2(),
          ),
        ),
      ),
      appBar: mudraPageAppBar(),
      body: gopNiytaPageView(),
    );
  }
}

Widget gopNiytaPageView() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSizeBox(15),
          containerCommon(Colors.pinkAccent, '• गोपनियता नीति •'),
          verticalSizeBox(Get.height * 0.030),
          cardAllCommon(StringRes.gopNiytaPage1, Colors.deepOrange),
        ],
      ),
    ),
  );
}
