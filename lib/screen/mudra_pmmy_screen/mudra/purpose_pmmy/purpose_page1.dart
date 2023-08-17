import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/purpose_pmmy/purpose_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class PurposePage1 extends StatelessWidget {
  const PurposePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: purposePage1Body(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => const PurposePage2(),
        ),
      ),
    );
  }
}

Widget purposePage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          containerCommon(Colors.deepPurple, "• Purpose of PMMY •"),
          verticalSizeBox(15),
          cardAllCommon(
              "Business loan for shopkeepers, traders, vendors and other activities in the service sector",
              Colors.pink),
          verticalSizeBox(12),
          cardAllCommon(
              "Equipment finance for small enterprise units", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Working capital loan via MUDRA cards", Colors.pink),
          verticalSizeBox(12),
          cardAllCommon(
              "People involved in Agri-allied non-farm income generating activities such as poultry farming, bee-keeping, pisciculture, etc. can apply for a Mudra Loan.",
              Colors.brown),
          verticalSizeBox(12),
          cardAllCommon(
              "People who use tractors, tillers as well as two wheelers for commercial activities can apply for a Mudra Loan.",
              Colors.pink),
          verticalSizeBox(50)
        ],
      ),
    ),
  );
}
