import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/faqs_loan/faqs_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class FaqsPage1 extends StatelessWidget {
  const FaqsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: faqsPageBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => const FaqsPage2(),
        ),
      ),
    );
  }
}

Widget faqsPageBody() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          containerCommon(Colors.purple, "• FAQs on MUDRA Loan •"),
          verticalSizeBox(15),
          cardAllCommon(
              "1. What type of loan is Mudra Loan?\n\nMudra Loan can be considered as a type of term loan where a group or an individual can avail a loan for expansion of business, purchasing of inventory, etc.",
              Colors.deepOrangeAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "2. What is Mudra Loan limit from banks?\n\nThe maximum loan amount that can be availed from banks is up to Rs.10 lakh.",
              Colors.purple),
          verticalSizeBox(12),
          cardAllCommon(
              "3. Is ITR Compulsory for Mudra Loan?\n\nYes, you will have to produce your income tax returns (ITR) for the past two years if you are looking to apply for a Mudra Loan.",
              Colors.blueGrey),
          verticalSizeBox(12),
          cardAllCommon(
              "4. Does Cibil score affect Mudra Loan?\n\nNo, your Cibil Score will not be taken into consideration if you are looking to apply for a Mudra Loan.",
              Colors.green),
          verticalSizeBox(12),
          cardAllCommon(
              "5. What kind of clients does MUDRA loan target?\n\nMUDRA loans are targeted at the Non- Corporate Small Business Segment which consists of millions of partnership firms and proprietorships that operate as service sector units, small industries, small manufacturing units, vegetable or fruit vendors, repair shops, etc. In urban as well as rural regions.",
              Colors.deepPurple),
          verticalSizeBox(12),
          cardAllCommon(
              "6. Are there any subsidies under the Pradhan Mantri MUDRA Yojana?\n\nNo. There are no subsidies under the Pradhan Mantri MUDRA Yojana.",
              Colors.brown),
          verticalSizeBox(12),
          cardAllCommon(
              "7. Can I avail a MUDRA loan if I have recently graduated from college?\n\nYes. College graduates who wish to start their own businesses can apply for MUDRA loans. Based on the kind of business you wish to start and the requirements of the project, MUDRA can help you get your business up and running.",
              Colors.amber),
          verticalSizeBox(12),
          cardAllCommon(
              "8. I am a woman entrepreneur and wish to start my own boutique. Can MUDRA help?\n\nYes. Women entrepreneurs can make the most of a special refinance scheme offered to women entrepreneurs. The Mahila Uddyami Scheme as it is called, offers an interest rebate of 0.25% when you avail a MUDRA loan from an NBFC or a micro financ institution.",
              Colors.pinkAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "9. Do I need to have a PAN card if I want to avail a MUDRA loan?\n\nPAN cards are not mandatory for those who wish to avail MUDRA loans, but you will have to meet the other KYC requirements set forth by the financing institution.",
              Colors.deepOrangeAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "10. Who can borrow from Mudra Bank?\n\nAny individual or MSMEs who runs small business are eligible to apply for mudra loan.",
              Colors.blue),
          verticalSizeBox(50),
        ],
      ),
    ),
  );
}
