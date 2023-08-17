import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/bank_list/bank_list_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class BankListPage1 extends StatelessWidget {
  const BankListPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: bankList(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
            text: "N E X T",
            textColor: Colors.white,
            textSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            minHeight: Get.height * 0.065,
            onPressed: () => const BankListPage2()),
      ),
    );
  }
}

Widget bankList() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        containerCommon(
          Colors.cyan,
          "Oriental Bank of Commerce",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.blueGrey,
          "Kotak Mahindra Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.orange,
          "HDFC Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.teal,
          "Gujarat State Co-operative Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.indigo,
          "Standard Chartered Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.pinkAccent,
          "Indusind Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.brown,
          "Mehsana Urban Co-operative Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.orange,
          "Indian Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.lightBlueAccent,
          "Axis Bank Ltd",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.redAccent,
          "Rajkot Nagarik Sahakari Bank ",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.cyan,
          "State Bank of Patiala",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.blueGrey,
          "Jammu & Kashmir Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.indigoAccent,
          "Bank of India",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.orangeAccent,
          "Karnataka Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.lime,
          "Central Bank of India",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.deepOrangeAccent,
          "City Union Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.brown,
          "IDBI Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.pink,
          "Yes Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.blue,
          "Citibank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.cyan,
          "South Indian Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.purpleAccent,
          "Canara Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.teal,
          "Federal Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.amber,
          "Allahabad Bank",
        ),
        verticalSizeBox(10),
        containerCommon(
          Colors.brown,
          "Vijaya Bank",
        ),
        verticalSizeBox(10),
        containerCommon(Colors.pinkAccent, "DCB Bank"),
        verticalSizeBox(10),
        containerCommon(Colors.deepPurple, "Bank of Baroda"),
        verticalSizeBox(10),
        containerCommon(Colors.green, "Ratnakar Bank"),
        verticalSizeBox(10),
        containerCommon(Colors.purple, "South Indian Bank"),
        verticalSizeBox(10),
        containerCommon(Colors.deepOrangeAccent, "State Bank of India"),
        verticalSizeBox(10),
        containerCommon(Colors.blueGrey, "Andhra Bank"),
        verticalSizeBox(10),
        containerCommon(Colors.brown, "Corporation Bank"),
        verticalSizeBox(10),
        containerCommon(Colors.cyan, "Punjab National Bank"),
        verticalSizeBox(50),
      ],
    ),
  );
}
