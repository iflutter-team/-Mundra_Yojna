import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/yojna_udeshya/yojna_udeshya_page4.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class YojnaUdeshyaPage3 extends StatelessWidget {
  const YojnaUdeshyaPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (controller) {
          return controller.nativeAd();
        },
      ),
      appBar: mudraPageAppBar(),
      body: yojnaUdeshyaPage3Body(),
    );
  }
}

Widget yojnaUdeshyaPage3Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      children: [
        containerCommon(Colors.teal, "योजना के उदेश्य"),
        verticalSizeBox(15),
        cardAllCommon(
            "परिवार स्तर पर निर्णय लिये जाने में महिलाओं की प्रभावी भूमिका को प्रोत्साहित करना",
            Colors.orangeAccent),
        verticalSizeBox(15),
        ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          minHeight: Get.height * 0.065,
          onPressed: () => const YojnaUdeshyaPage4(),
        )
      ],
    ),
  );
}
