import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/bank_list/bank_list_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/benefits_screen/benefits_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/categories_loan/categories_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/covered_activities/activities_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/covered_businesses/covered_businesses_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/eligibility_page/eligibility_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/faqs_loan/faqs_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/flayer_mudra/flayer_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/how_to_apply/apply_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/main_line_nbfc/main_line_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/mudra_bank_offering/mudra_bank_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/offerings__mudra_page/offerings_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/purpose_pmmy/purpose_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/the_mudra/the_mudra_1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/what__is_mudra/what_is_page1.dart';

Widget commonBox(Color colorBg, Color colorBorder, String text,
    Function() onPressed, Color iconBg) {
  return InkWell(
    onTap: onPressed,
    child: Card(
      elevation: 10,
      shadowColor: Colors.black,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 0, color: Colors.white)),
      child: Container(
        height: Get.height * 0.15,
        width: Get.width * 0.45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colorBg,
            border: Border.all(color: colorBorder, width: 8)),
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(color: iconBg, shape: BoxShape.circle),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget mudraPageBody() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: ListView(
      children: [
        Row(
          children: [
            commonBox(Colors.green.shade200, Colors.green, "The MUDRA",
                () => Get.to(() => const TheMudraPage1()), Colors.blue),
            commonBox(
                Colors.redAccent.shade100,
                Colors.red,
                "Required Documents",
                () => Get.to(() => const DocumentPage1()),
                Colors.pinkAccent)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.blueAccent.shade100, Colors.blue, "Eligibility",
                () => Get.to(() => const EligibilityPage1()), Colors.redAccent),
            commonBox(
                Colors.blueGrey.shade100,
                Colors.blueGrey,
                "Mudra Offerings",
                () => Get.to(() => const OfferingPage1()),
                Colors.green.shade300)
          ],
        ),
        Row(
          children: [
            commonBox(
                Colors.orangeAccent.shade100,
                Colors.orange,
                "Mudra Flayer",
                () => Get.to(() => const FlayerPage1()),
                Colors.blueGrey),
            commonBox(Colors.deepPurple.shade100, Colors.purple, "MUDRA Loans",
                () => Get.to(() => const CategoriesPage1()), Colors.brown)
          ],
        ),
        Row(
          children: [
            commonBox(
                Colors.pinkAccent.shade100,
                Colors.pink,
                "Covered Activities",
                () => Get.to(() => const ActivitiesPage1()),
                Colors.cyan),
            commonBox(Colors.indigo.shade100, Colors.indigo, "Benefits",
                () => Get.to(() => const BenefitsPage1()), Colors.redAccent)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.brown.shade200, Colors.brown, "Purpose of PMMY",
                () => Get.to(() => const PurposePage1()), Colors.indigo),
            commonBox(
                Colors.lightGreen.shade200,
                Colors.lightGreen,
                "Covered Businesses",
                () => Get.to(() => const BusinessesPage1()),
                Colors.teal)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.teal.shade200, Colors.teal, "What is Mudra Card?",
                () => Get.to(() => const WhatIsPage1()), Colors.lightGreen),
            commonBox(Colors.redAccent.shade100, Colors.red, "List of Banks",
                () => Get.to(() => const BankListPage1()), Colors.blueGrey)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.amber.shade200, Colors.amber, "Mainline NBFCs",
                () => Get.to(() => const LinkPage1()), Colors.purpleAccent),
            commonBox(
                Colors.blue.shade100,
                Colors.blue,
                "NBFC offering Mudra Bank",
                () => Get.to(() => const MudraBankPage1()),
                Colors.pinkAccent)
          ],
        ),
        Row(
          children: [
            commonBox(
                Colors.blueGrey.shade100,
                Colors.blueGrey,
                "How to Apply for PMMY?",
                () => Get.to(() => const ApplyPage1()),
                Colors.blue),
            commonBox(Colors.teal.shade100, Colors.teal, "FAOs on Mudra Loan",
                () => Get.to(() => const FaqsPage1()), Colors.orange)
          ],
        ),
      ],
    ),
  );
}

AppBar mudraPageAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.black,
        )),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "प्रधानमंत्री मुद्रा योजना",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.purple.shade300),
        ),
        const Text(
          "पूंजी सफलता की कुंज",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
        ),
      ],
    ),
  );
}
