import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class DocumentPage2 extends StatelessWidget {
  const DocumentPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: document2(),
    );
  }
}

Widget document2() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        requiredDocument("Required Document 2"),
        verticalSizeBox(10),
        documentCard("Proof of identity",
            "Aadhaar card, Voter's ID card,driving license,passport,etc.",
            image: "asserts/images/aadhaar.jpg"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: ButtonWidget(
            text: "N E X T",
            textColor: Colors.white,
            textSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            minHeight: Get.height * 0.065,
            onPressed: () => const DocumentPage3(),
          ),
        )
      ],
    ),
  );
}
