import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page6.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class DocumentPage5 extends StatelessWidget {
  const DocumentPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: document5(),
    );
  }
}

Widget document5() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        requiredDocument("Required Document 5"),
        verticalSizeBox(10),
        documentCard("Caste Certificate", "If applicable",
            image: "asserts/images/janm.jpg"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: ButtonWidget(
            text: "N E X T",
            textColor: Colors.white,
            textSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            minHeight: Get.height * 0.065,
            onPressed: () => const DocumentPage6(),
          ),
        )
      ],
    ),
  );
}
