import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class EligibilityPage1 extends StatelessWidget {
  const EligibilityPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: eligibilityBody1(),
    );
  }
}

Widget eligibilityBody1() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        pointEligibility("Point 1 :"),
        verticalSizeBox(10),
        eligibilityCard("Minimum age of eligibility", "18 years"),
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
            onPressed: () => const EligibilityPage2(),
          ),
        )
      ],
    ),
  );
}

Widget pointEligibility(String text) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Colors.red.shade300),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      child: Text(text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
    ),
  );
}

Widget eligibilityCard(String title, String subTitle) {
  return Card(
    elevation: 5,
    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          verticalSizeBox(5),
          Container(
            height: 2.5,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
          ),
          verticalSizeBox(5),
          SizedBox(
              child: Text(
            subTitle,
            style: const TextStyle(fontSize: 20),
          ))
        ],
      ),
    ),
  );
}
