import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/app_bar_common.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/mudra_yojna_page.dart';

class MudraPage3 extends StatelessWidget {
  const MudraPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCommon(),
      body: mudraPage3Body(() => Get.to(() => const MudraYojna())),
    );
  }
}

Widget mudraPage3Body(Function() onPressed) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListView(
      children: [
        const Text(
            "1. Margin/Promoter's Contribution is as per the policy framework of the lender, which is based on overall guidelines of RBI in this regard. Banks may not insist for margin for Shishu loans."),
        verticalSizeBox(10),
        const Text(
            "2. Interest rates are to be charged as per the policy decision of the bank. However, the interest rate charged to ultimate borrowers shall be reasonable."),
        verticalSizeBox(10),
        const Text(
            "3. Interest rates should be charged as per the lender's policy. However, the interest rates charged to ultimate borrowers should be reasonable."),
        verticalSizeBox(10),
        const Text(
            "4. First charge on all assets created out of the loan extended to the borrower and the assets which are directly associated with the business/project for which credit has bean extended"),
        verticalSizeBox(25),
        ButtonWidget(
          text: "N E X T",
          textSize: 22,
          textColor: Colors.white,
          minHeight: Get.height * 0.070,
          fontWeight: FontWeight.bold,
          color: Colors.pinkAccent,
          onPressed: onPressed,
        )
      ],
    ),
  );
}
