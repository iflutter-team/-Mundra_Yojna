import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/covered_businesses/covered_businesses_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class BusinessesPage1 extends StatelessWidget {
  const BusinessesPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: businessesPageBody(),
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
            () => const BusinessesPage2(),
          ),
        ),
      ),
    );
  }
}

Widget businessesPageBody() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          containerCommon(Colors.deepPurple, "Shopkeepers"),
          verticalSizeBox(15),
          cardAllCommon("Fruits and vegetable vendors", Colors.blueAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "Non-Corporate Small Business Segment running as small manufacturing units that comprise millions of proprietorship or partnership firms",
              Colors.teal),
          verticalSizeBox(12),
          cardAllCommon(
              "Service sector units such as beauty parlours, boutiques, courier agents, cycle and motorcycle repair shop, dry cleaning shops, DTP and Photocopying Facilities, gymnasiums, pharmacies, saloons, tailoring units, etc.",
              Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Truck operators.", Colors.lightGreen),
          verticalSizeBox(12),
          cardAllCommon(
              "Loan can be availed for purchase of transport vehicles for goods and personal transport such as passenger cars,auto rickshaw,e-rickshaws,taxis,small goods transport vehicle,3 wheelers,etc.",
              Colors.pinkAccent),
          verticalSizeBox(12),
          cardAllCommon("Artisans.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Food-service units", Colors.lightGreen),
          verticalSizeBox(12),
          cardAllCommon(
              "Food processing units such as agricultural produce preservation at rural lever, small service food stalls, biscuit, bread and bun making, canteen services, day-to-day catering, cold storages and cold chain vehicles, jams/jellies making, papad and pickle making, sweet shops, ice and ice cream making units.",
              Colors.purple),
          verticalSizeBox(12),
          cardAllCommon(
              "Repair shops or mechanic sheds", Colors.deepOrangeAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "Small industries such as chicken work, cotton ginning, traditional embroidery and hand work , handLoom, knitting, apparel desing, computerized embroider, traditional dyeing and printing,powerLoom, textile non garment products such as bags, vehicle accessories, furnishing accessories, zari and zardozi work, stitching and others.",
              Colors.blueAccent),
          verticalSizeBox(12),
          cardAllCommon("Machine operators", Colors.blueGrey),
          verticalSizeBox(50)
        ],
      ),
    ),
  );
}
