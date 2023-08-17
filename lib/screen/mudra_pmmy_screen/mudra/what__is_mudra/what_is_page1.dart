import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/what__is_mudra/what_is_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class WhatIsPage1 extends StatelessWidget {
  const WhatIsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: whatIsPageBody(),
    );
  }
}

Widget whatIsPageBody() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          containerCommon(Colors.purpleAccent, "• What is a MUDRA Card? •"),
          verticalSizeBox(15),
          cardAllCommon(
              "When you apply for a Mudra Loan, you are issued a Mudra Card which is a debit card. After you successfully apply for the loan, you will be required to open an account along with which the card is issued.You can use the Mudra Card to withdraw the loan amount which will be disbursed to your Mudra account after you successfully apply for the loan.",
              Colors.brown),
          verticalSizeBox(20),
          ButtonWidget(
            text: "N E X T",
            textColor: Colors.white,
            textSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            minHeight: Get.height * 0.065,
            onPressed: () => const WhatIsPage2(),
          ),
        ],
      ),
    ),
  );
}
