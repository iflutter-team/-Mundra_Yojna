import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/categories_loan/categories_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class CategoriesPage1 extends StatelessWidget {
  const CategoriesPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: categoriesPageBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => const CategoriesPage2(),
        ),
      ),
    );
  }
}

Widget categoriesPageBody() {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          containerCommon(Colors.pinkAccent, "• Categories of MUDRA Loans •"),
          verticalSizeBox(15),
          cardAllCommon(
              "Shishu MUDRA Loan - The beginner level loan option that can offer a loan amount of up to INR 50000 is the go to loan that can be taken up by almost any organisation to meet short term financial needs. It can bridge investment gaps, shortfalls in manufacturing processes or even for buying office appliances",
              Colors.brown),
          verticalSizeBox(12),
          cardAllCommon(
              "Kishore MUDRA Loan - This loan is a more versatile loan with higher loan limit of up to INR 5 lakhs. The loans taken as per this can form the basis of any small business that need urgent financing with respect to enhancing infrastructure and fulfilling manufacturing or production needs",
              Colors.purpleAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "Tarun MUDRA Loan - The Tarun variant of the MUDRA loan allows for the maximum credit amount of INR 50 lakhs.Loan through this can easily serve as start-up funding for small to mid-size businesses that have plans for opening up in multiple locations.",
              Colors.teal),
          verticalSizeBox(60),
        ],
      ),
    ),
  );
}
