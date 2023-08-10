import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/patrata/patrata_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class PatrataPage1 extends StatelessWidget {
  const PatrataPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: patrataPage1Body(),
    );
  }
}

Widget patrataPage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      children: [
        verticalSizeBox(10),
        containerCommon(Colors.brown, "• पात्रता •"),
        verticalSizeBox(15),
        cardAllCommon("मध्यप्रदेश की स्थानीय निवासी हो ।", Colors.pinkAccent),
        verticalSizeBox(15),
        cardAllCommon(
            "विवाहित हो, जिनमें विधवा, तलाकशुदा एवं परित्यक्ता महिला भी सम्मिलित होंगी।",
            Colors.orange),
        verticalSizeBox(15),
        cardAllCommon(
            "आवेदन के कैलेंडर वर्ष में, 01 जनवरी की स्थिति में 23 वर्ष पूर्ण कर चुकी हों तथा 60 वर्ष की आयु से कम हो।",
            Colors.green),
        verticalSizeBox(20),
        ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(
            () => const PatrataPage2(),
          ),
        ),
      ],
    ),
  );
}
