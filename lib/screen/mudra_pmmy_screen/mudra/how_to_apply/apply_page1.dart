import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/how_to_apply/apply_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class ApplyPage1 extends StatelessWidget {
  const ApplyPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: applyPageBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => const ApplyPage2(),
        ),
      ),
    );
  }
}

Widget applyPageBody() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          containerCommon(Colors.purpleAccent, "• How to Apply for PMMY? •"),
          verticalSizeBox(20),
          cardAllCommon(
            "Step 1 :\n\nEnsure that necessary documents are kept ready. The main document you will require are your ID proof, address proof, and business proof.",
            Colors.purple,
          ),
          verticalSizeBox(12),
          cardAllCommon(
              "Step 2 :\n\nApproach a lender who is enrolled under the MUDRA scheme and fill up the application form.",
              Colors.teal),
          verticalSizeBox(12),
          cardAllCommon("Step 3 :\n\nSubmit the necessary documents.",
              Colors.amberAccent),
          verticalSizeBox(5),
          GetBuilder<HomeController>(
            builder: (controller) {
              return controller.nativeAd();
            },
          ),
        ],
      ),
    ),
  );
}
