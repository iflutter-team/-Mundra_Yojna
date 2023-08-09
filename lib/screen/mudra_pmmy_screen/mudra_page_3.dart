import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/mudra_yojna_page.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/utils/asset_res.dart';

class MudraPage3 extends StatelessWidget {
  const MudraPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: mudraPage3Body(() => Get.to(() => const MudraYojna())),
    );
  }
}

Widget mudraPage3Body(Function() onPressed) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSizeBox(15),
          ButtonWidget(
            text: "N E X T",
            textSize: 22,
            textColor: Colors.white,
            minHeight: Get.height * 0.070,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
            onPressed: onPressed,
          ),
          verticalSizeBox(15),
          Container(
            alignment: Alignment.topLeft,
            height: 100,
            width: 100,
            child: Image.asset(AssetRes.amitShah),
          ),
          verticalSizeBox(3),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.purpleAccent),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "अमित शाह जी",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  Text(
                    "(माननीय गृह मंत्री, भारत)",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          verticalSizeBox(10),
          const Text(
            "1. Margin/Promoter's Contribution is as per the policy framework of the lender, which is based on overall guidelines of RBI in this regard. Banks may not insist for margin for Shishu loans.",
            style: TextStyle(fontSize: 16),
          ),
          verticalSizeBox(10),
          const Text(
            "2. Interest rates are to be charged as per the policy decision of the bank. However, the interest rate charged to ultimate borrowers shall be reasonable.",
            style: TextStyle(fontSize: 16),
          ),
          verticalSizeBox(10),
          const Text(
            "3. Interest rates should be charged as per the lender's policy. However, the interest rates charged to ultimate borrowers should be reasonable.",
            style: TextStyle(fontSize: 16),
          ),
          verticalSizeBox(10),
          const Text(
            "4. First charge on all assets created out of the loan extended to the borrower and the assets which are directly associated with the business/project for which credit has bean extended",
            style: TextStyle(fontSize: 16),
          ),
          verticalSizeBox(10),
          containerCommon(Colors.pink, "What is MUDRA",
              vertical: 8, horizontal: 10),
          verticalSizeBox(10),
          const Text(
            "MUDRA stands for Micro Units Development & Refinance Agency is set up to provide funding to the non-corporate small business sector through various financial institutions like Banks, NBFCs and MFIS",
            style: TextStyle(fontSize: 16),
          ),
          verticalSizeBox(10),
        ],
      ),
    ),
  );
}
