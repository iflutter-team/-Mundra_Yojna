import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/flayer_mudra/flayer_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class FlayerPage2 extends StatelessWidget {
  const FlayerPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: flayerPage2Body(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => const FlayerPage3(),
        ),
      ),
    );
  }
}

Widget flayerPage2Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          containerCommon(Colors.purple, "• Back •"),
          verticalSizeBox(15),
          containerCommon(Colors.blueGrey,
              "Why You Should Apply for the Pradhan Mantri Mudra Yojana Scheme?\n\n The Pradhan Mantri Mudra Yojana scheme is an ideal choice for individuals who are in need of funds to finance their various business-related requirements. Listed below are a few reasons why you should apply for the Pradhan Mantri Mudra Yojana scheme:\n\n1. Through the PMMY scheme, microenterprises in the country have better access to funds.\n\n2. Individuals in need of funds for business requirements can avail loans under the PMMY scheme at an affordable rate of interest.\n\n3. The PMMY scheme aids in employment generation and growth of GDP.\n\n4. The processing fee charged for the Pradhan Mantri Mudra Yojana is comparatively low. For the Kishore and Shishu schemes, MSE units that avail the loan are charged a zero processing fee, while for the Tarun scheme, a nominal interest of 0.50% plus tax is charged."),
          verticalSizeBox(50),
        ],
      ),
    ),
  );
}
