import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/offerings__mudra_page/offerings_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class OfferingPage2 extends StatelessWidget {
  const OfferingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: offeringPage2Body(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(
            () => const OfferingPage3(),
          ),
        ),
      ),
    );
  }
}

Widget offeringPage2Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: ListView(
      children: [
        containerCommon(
            Colors.orange, "Pradhan Mantri MUDRA Youjna(PMMY) ", 15, 10),
        verticalSizeBox(10),
        cardAllCommon(
            "Under the aegis of Pradhan Mantri Mudra Yojana (PMMY), MUDRA has created products/ schemes. The interventions have been named 'Shishu', 'Kishore' and 'Tarun' to signify the stage of growth / development and funding needs of the beneficiary micro unit/ entrepreneur and also provide a reference point for the next phase of graduation / growth to look forward to:\n\nShishu covering loans upto 50,000/\n\n-Kishor covering loans above 50,000/- and upto 5 lakh\n\nTarun covering loans above 5 lakh and upto 10 lakh\n\nWith an objective to promote entrepreneurship among the new generation aspiring youth, it is ensured that more focus is given to Shishu Category Units and then Kishore and Tarun categories.\n\nWithin the framework and overall objective of development and growth of micro enterprises sector under Shishu, Kishore and Tarun, the products being offered by MUDRA are so designed, to meet requirements of different sectors/ business activities\n\nas well as business/ entrepreneur segments. The funding support from MUDRA\n\nare of two types:\n\nMicro Credit Scheme (MCS) for loans up to 1 lakh finance through MFIS.Refinance Scheme for Commercial Banks / Regional Rural Banks (RRBs) / Small Finance Banks / Non Banking Financial Companies (NBFCs).",
            Colors.purple),
        verticalSizeBox(50)
      ],
    ),
  );
}
