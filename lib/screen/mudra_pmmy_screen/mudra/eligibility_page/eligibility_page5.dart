import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page6.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class EligibilityPage5 extends StatelessWidget {
  const EligibilityPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: eligibilityBody5(),
    );
  }
}

Widget eligibilityBody5() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        pointEligibility("Point 5 :"),
        verticalSizeBox(10),
        eligibilityCard("Security or collateral",
            "No collateral or third-party security is required"),
        verticalSizeBox(10),
        eligibilityCard(
          "How to Apply for Mudra loan?",
          "Step 1: Ensure that the necessary documents are kept ready. The main documents you will require are your ID proof, address proof, and business proof.\n\nStep 2: Approach a lender who is enrolled under the MUDRA scheme and fill up the application form. Step 3: Submit the necessary documents.",
        ),
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
            onPressed: () => const EligibilityPage6(),
          ),
        )
      ],
    ),
  );
}
