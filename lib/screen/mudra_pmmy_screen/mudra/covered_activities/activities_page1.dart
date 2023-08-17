import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/covered_activities/activities_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class ActivitiesPage1 extends StatelessWidget {
  const ActivitiesPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: activitiesPageBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => const ActivitiesPage2(),
        ),
      ),
    );
  }
}

Widget activitiesPageBody() {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          containerCommon(Colors.pinkAccent, "• Covered Activities •"),
          verticalSizeBox(15),
          cardAllCommon("Food products sector", Colors.purpleAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "Transport vehicles used for transport of both goods and passengers",
              Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Communities, social and personal service activities",
              Colors.green),
          verticalSizeBox(12),
          cardAllCommon(
              "Business loans for shopkeepers and traders", Colors.deepPurple),
          verticalSizeBox(12),
          cardAllCommon("Textile products sector and activities", Colors.amber),
          verticalSizeBox(12),
          cardAllCommon('Agriculture related activities', Colors.teal),
          verticalSizeBox(12),
          cardAllCommon(
              "Equipment finance scheme for Micro Units", Colors.pinkAccent),
          verticalSizeBox(50)
        ],
      ),
    ),
  );
}
