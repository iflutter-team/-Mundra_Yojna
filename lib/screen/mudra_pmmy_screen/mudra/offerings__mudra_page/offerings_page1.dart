import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/offerings__mudra_page/offerings_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class OfferingPage1 extends StatelessWidget {
  const OfferingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: offeringPage1Body(),
    );
  }
}

Widget offeringPage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        containerCommon(Colors.orange, "• Product/Offerings of MUDRA •",
            vertical: 10),
        verticalSizeBox(10),
        cardAllCommon(
          "Micro Units Development and Refinance Agency Ltd. [MUDRA] is an NBFC supporting development of micro enterprise sector in the country. MUDRA provides refinance support to Banks/MFIS / NBFCs for lending to micro units having loan requirement upto 10 lakh. MUDRA provides refinance support to micro business under the Scheme of Pradhan Mantri MUDRA Yojana. The other products are for development support to the sector. The bouquet of offerings of MUDRA is depicted below. The offerings are being targeted across the spectrum of beneficiary segments.",
          Colors.purple,
        ),
        verticalSizeBox(15),
        ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => const OfferingPage2(),
        ),
      ],
    ),
  );
}
