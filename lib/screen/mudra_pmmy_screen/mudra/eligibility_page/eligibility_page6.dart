import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page7.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class EligibilityPage6 extends StatelessWidget {
  const EligibilityPage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: eligibilityBody6(),
    );
  }
}

Widget eligibilityBody6() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        pointEligibility("Point 6 :"),
        verticalSizeBox(10),
        eligibilityCard("Documents required",
            "Proof of identity,proof of residence,application form and passport size photos"),
        verticalSizeBox(10),
        eligibilityCard("What is a MUDRA Card?",
            "When you apply for a Mudra Loan, you are issued a Mudra Card which is a debit card. After you successfully apply for the loan, you will be required to open an account along with which the card is issued. You can use the Mudra Card to withdraw the loan amount which will be disbursed to your Mudra account after you successfully apply for the loan."),
        verticalSizeBox(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: ButtonWidget(
            text: "N E X T",
            textColor: Colors.white,
            textSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            minHeight: Get.height * 0.065,
            onPressed: () => Get.to(
              () => const EligibilityPage7(),
            ),
          ),
        )
      ],
    ),
  );
}
