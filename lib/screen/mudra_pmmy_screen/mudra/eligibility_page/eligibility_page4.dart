import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page5.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class EligibilityPage4 extends StatelessWidget {
  const EligibilityPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: eligibilityBody4(),
    );
  }
}

Widget eligibilityBody4() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        pointEligibility("Point 4 :"),
        verticalSizeBox(10),
        eligibilityCard("Institutions eligible to offer Mudra Loan",
            "Public Sector Banks,Private Sector Banks,Micro Finance Institutions,and Regional Rural Banks"),
        verticalSizeBox(10),
        eligibilityCard("MUDRA Loan Eligibility",
            "Indian citizens who have their own business plans for service sector activities, or trading or manufacturing activities and require amounts of up to Rs.10 lakh can apply for Mudra loans. It can be availed from public sector banks, private sector banks, regional rural banks (RRBs), small finance banks (SFBs), and micro finance institutions (MFIs)."),
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
              () => const EligibilityPage5(),
            ),
          ),
        )
      ],
    ),
  );
}
