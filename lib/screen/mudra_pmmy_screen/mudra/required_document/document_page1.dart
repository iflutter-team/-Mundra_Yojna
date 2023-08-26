import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/required_document/document_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class DocumentPage1 extends StatelessWidget {
  const DocumentPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: document1(),
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (controller) {
          return controller.nativeAd();
        },
      ),
    );
  }
}

Widget document1() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        requiredDocument("Required Document 1"),
        verticalSizeBox(10),
        documentCard("Application Form",
            "Duly filled up application form on the basis of the loan category",
            image: "asserts/images/application_form.jpg"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: ButtonWidget(
            text: "N E X T",
            textColor: Colors.white,
            textSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            minHeight: Get.height * 0.065,
            onPressed: () => const DocumentPage2(),
          ),
        )
      ],
    ),
  );
}

Widget documentCard(String title, String subTitle, {String? image}) {
  return Card(
    elevation: 5,
    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 15),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: image != null ? Image.asset(image) : const SizedBox(),
          ),
          horizontalSizeBox(5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width * 0.55,
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              verticalSizeBox(5),
              Container(
                height: 2.5,
                width: Get.width * 0.5,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
              ),
              verticalSizeBox(5),
              SizedBox(
                  width: Get.width * 0.55,
                  child: Text(
                    subTitle,
                    style: const TextStyle(fontSize: 20),
                  ))
            ],
          )
        ],
      ),
    ),
  );
}

Widget requiredDocument(String text) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.redAccent.shade200,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ),
  );
}
