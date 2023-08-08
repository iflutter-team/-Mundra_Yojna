import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/app_bar_common.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_3.dart';

class MudraPage2 extends StatelessWidget {
  const MudraPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCommon(),
      body: mudraPage2Body(() => Get.to(() => const MudraPage3())),
    );
  }
}

Widget mudraPage2Body(Function() onPressed) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListView(
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
        const Text(
          "MUDRA Loan is offered under the Pradhan Mantri Mudra Yojana (PMMY). MUDRA stands for Micro-Units Development and Refinance Agency. Under this scheme, borrowers can avail business loans ranging from Rs.50,000 to Rs.10 lakh on the basis of the Sishu, Kishor, and Tarun categories.",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        verticalSizeBox(15),
        const Text(
            "1. Pradhan Mantri MUDRA Yojana (PMMY) is a scheme set up by the Government of India (Gol) for providing Mudra Loans up to Rs. 10 lakhs to the non-corporate, non-farming small & micro enterprises. Mudra Loans are provided under three categories.",
            style: TextStyle(color: Colors.black)),
        verticalSizeBox(10),
        const Text(
            "2. Mudra Loans are provided to income generating small & micro enterprises.",
            style: TextStyle(color: Colors.black)),
        verticalSizeBox(10),
        const Text(
            "3. Extended by Commercial Banks, MFIS, NBFCs and other financial intermediaries."),
        verticalSizeBox(10),
        const Text(
            "4. Provides financial assistance to small and micro businesses to help them develop and expand their businesses."),
        verticalSizeBox(20),
        ButtonWidget(
          text: "N E X T",
          textSize: 22,
          textColor: Colors.white,
          minHeight: Get.height * 0.070,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
          onPressed: onPressed,
        )
      ],
    ),
  );
}
