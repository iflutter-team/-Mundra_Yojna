import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_yojna.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class GopNiytaPage3 extends StatelessWidget {
  const GopNiytaPage3({super.key});

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
          color: Colors.black,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(() => const AllYojna()),
        ),
      ),
      appBar: mudraPageAppBar(),
      body: siteMapPageScreenView3(),
    );
  }
}

Widget siteMapPageScreenView3() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSizeBox(20),
          Container(
            height: Get.height * 0.28,
            width: Get.width * 0.91,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          verticalSizeBox(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: Get.width * 0.90,
              child: const Text(
                StringRes.siteMapPage3,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
