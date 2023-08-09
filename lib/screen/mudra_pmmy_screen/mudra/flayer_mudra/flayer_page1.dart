import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/flayer_mudra/flayer_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class FlayerPage1 extends StatelessWidget {
  const FlayerPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: flayerPage1Body(),
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
            () => const FlayerPage2(),
          ),
        ),
      ),
    );
  }
}

Widget flayerPage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          containerCommon(Colors.deepPurple, "• Front •"),
          verticalSizeBox(15),
          containerCommon(Colors.blueGrey,
              "Things to Keep in Mind\n\n1. Loans that are issued under the Pradhan Mantri Mudra Yojana scheme are guaranteed under the CGFMU or the Credit Guarantee for Micro Units. The same guarantee is also provided by the NCGTC or the National Credit Guarantee Trustee Company.\n\n2. The guarantee that is offered by the CGFMU and the NCGTC is available for a maximum period of five years. Thus, the maximum repayment scheme for the Pradhan Mantri Mudra Yojana scheme is fixed at 60 months.\n\n 3. MUDRA RuPay cards will be offered to all eligible accounts."),
          verticalSizeBox(50),
        ],
      ),
    ),
  );
}
