import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/benefits_screen/benefits_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class BenefitsPage1 extends StatelessWidget {
  const BenefitsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: benefitPageBody(),
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
            () => const BenefitsPage2(),
          ),
        ),
      ),
    );
  }
}

Widget benefitPageBody() {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          containerCommon(Colors.redAccent, "• Benefits •"),
          verticalSizeBox(15),
          cardAllCommon(
              "Banking and financial services can be availed in both rural and urban areas.",
              Colors.redAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "Financial backing can be obtained by micro-small businesses and start-ups.",
              Colors.blueAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "Business loans can be taken for small amounts at affordable interest rates.",
              Colors.brown),
          verticalSizeBox(12),
          cardAllCommon(
              "The borrower's credit guarantee is taken by the government, so if a borrower is unable to repay the amount borrowed, the responsibility for the loss will be borne by the government.",
              Colors.lime),
          verticalSizeBox(12),
          cardAllCommon(
              "Food vendors, shopkeepers and other small business owners can make the most of this scheme.",
              Colors.green),
          verticalSizeBox(12),
          cardAllCommon(
              "Financial aid is available through this scheme in areas where people have no access to basic banking facilities.",
              Colors.purpleAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "The repayment period of the scheme can extend up to seven years.",
              Colors.brown),
          verticalSizeBox(12),
          cardAllCommon(
              "Women borrowers can avail the loan at discounted interest rates.",
              Colors.pinkAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "Refinance schemes can also be availed with designated lenders.",
              Colors.teal),
          verticalSizeBox(12),
          cardAllCommon(
              "Individuals who wish to generate income through micro enterprise activities can avail the Micro credits Scheme.",
              Colors.deepOrangeAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "The Mudra loan scheme is in collaboration with the Make in India camping which the government has initiated to foster innovation, facilitate investment,improve skill development, and build the best manufacturing infrastructure in the country. ",
              Colors.redAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "There is no need for collateral or security to avail this scheme.",
              Colors.teal),
          verticalSizeBox(50)
        ],
      ),
    ),
  );
}
