import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/mudra_bank_offering/mudra_bank_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class MudraBankPage1 extends StatelessWidget {
  const MudraBankPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: mudraBankPage1Body(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => const MudraBankPage2(),
        ),
      ),
    );
  }
}

Widget mudraBankPage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          containerCommon(Colors.orange, "• NBFC offering Mudra Bank Loan •"),
          verticalSizeBox(15),
          cardAllCommon("Arohan Financial Services Pvt.Ltd", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Arth Micro Finance Pvt.Ltd.", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("Belstar Investment & Finance Pvt.Ltd.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Bhartiya Micro Credit ", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("Cashpor Micro Credit ", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("CDOT", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("Digambet Capfin Ltd.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon(
              "ESAF Micro Finance & Investments Pvt.Ltd.", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("Equitas Micro Finance Pvt.Ltd.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Fusion Microfinance Pvt.Ltd.", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("Future Financial Services Ltd.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon(
              "Hindustan Microfinance Private Limited", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("IDF Financial Services Pvt. Ltd.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Jagaran Microfin Pvt. Ltd.", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("Madura Micro Finance Ltd.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Mahashakti Foundation", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("Midland Microfin Ltd.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Muthoot Fincorp Limited", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("Namra Finance Ltd.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("SKS Microfinance Ltd.", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("S V CreditLine Pvt.Ltd", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Saija Finance Private Ltd.", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("Sakhi Samudaya Kosh", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Ujjivan Financial Services Pvt. Ltd", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("Utkarsh Micro Finance Pvt. Ltd.", Colors.brown),
          verticalSizeBox(40),
        ],
      ),
    ),
  );
}
