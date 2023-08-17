import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class EligibilityPage2 extends StatelessWidget {
  const EligibilityPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: eligibilityBody2(),
    );
  }
}

Widget eligibilityBody2() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        pointEligibility("Point 2 :"),
        verticalSizeBox(10),
        eligibilityCard("Minimum age of eligibility", "65 years"),
        verticalSizeBox(10),
        eligibilityCard("What is the interest rate for MUDRA loan?",
            "The interest rate for Mudra loan depends on the profile of the applicant. There are several banks in the public sector as well as the private sector offering MUDRA loans. All the lenders have certain set guidelines are the final rate of interest at which the loan is provided to an applicant is decided by the lender itself. This is done after scrutinising the business requirements of the applicant as well."),
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
            onPressed: () => const EligibilityPage3(),
          ),
        )
      ],
    ),
  );
}
