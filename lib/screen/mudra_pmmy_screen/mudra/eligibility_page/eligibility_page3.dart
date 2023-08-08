import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page4.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class EligibilityPage3 extends StatelessWidget {
  const EligibilityPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: eligibilityBody3(),
    );
  }
}

Widget eligibilityBody3() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        pointEligibility("Point 3 :"),
        verticalSizeBox(10),
        eligibilityCard("Who can avail a Mudra Loan",
            "Loans can be availed by new and existing units"),
        verticalSizeBox(10),
        eligibilityCard("MUDRA Vision",
            "To be an integrated financial and support services provider par excellence, benchmarked with global best practices and standards, for the bottom of the pyramid universe for their comprehensive economic and social development."),
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
              () => const EligibilityPage4(),
            ),
          ),
        )
      ],
    ),
  );
}
