import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/yojna_udeshya/yojna_udeshya_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class YojnaUdeshyaPage1 extends StatelessWidget {
  const YojnaUdeshyaPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: yojnaUdeshyaPage1Body(),
    );
  }
}

Widget yojnaUdeshyaPage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      children: [
        containerCommon(Colors.teal, "योजना के उदेश्य"),
        verticalSizeBox(15),
        cardAllCommon(
            "महिलाओं के स्वावलम्बन एवं उनके आश्रित बच्चों के स्वास्थ्य एवं पोषण स्तर में सतत सुधार को बनाये रखना",
            Colors.orangeAccent),
        verticalSizeBox(15),
        ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          minHeight: Get.height * 0.065,
          onPressed: () => const YojnaUdeshyaPage2(),
        )
      ],
    ),
  );
}
