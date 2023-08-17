import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/main_line_nbfc/main_line_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class LinkPage1 extends StatelessWidget {
  const LinkPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: linkPage1Body(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => const LinkPage2(),
        ),
      ),
    );
  }
}

Widget linkPage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          containerCommon(Colors.deepPurple, "• Mainline NBFCs •"),
          verticalSizeBox(15),
          cardAllCommon(
              "Mahindra & Mahindra Financial Services Ltd", Colors.amber),
          verticalSizeBox(12),
          cardAllCommon("ShriRam City Union Finance Ltd.", Colors.deepPurple),
          verticalSizeBox(12),
          cardAllCommon("Reliance Capital Ltd.", Colors.pinkAccent),
          verticalSizeBox(12),
          cardAllCommon("Religare Finvest Ltd.", Colors.blueAccent),
          verticalSizeBox(12),
          cardAllCommon("Fullerton Indian Credit Co.Ltd.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon(
              "ShriRam Finance Corporation Pvt Ltd.\n(SRFCL)", Colors.teal),
          verticalSizeBox(12),
          cardAllCommon(
              "Indiabulls Financial Services Ltd.", Colors.purpleAccent),
          verticalSizeBox(12),
          cardAllCommon("ShriRam Transport Finance Co.Ltd.", Colors.blueGrey),
          verticalSizeBox(12),
          cardAllCommon(
              "India Infoline Finance Ltd(IIFL)", Colors.orangeAccent),
          verticalSizeBox(12),
          cardAllCommon("MAS Financial Services Ltd.", Colors.pinkAccent),
          verticalSizeBox(12),
          cardAllCommon("Bansal Credits Ltd.", Colors.amber),
          verticalSizeBox(12),
          cardAllCommon("SREI Equipment Finance Ltd.", Colors.blueGrey),
          verticalSizeBox(12),
          cardAllCommon("AU Financial india  Ltd.", Colors.black87),
          verticalSizeBox(12),
          cardAllCommon("Vistaar Financial Services P.Ltd", Colors.tealAccent),
          verticalSizeBox(12),
          cardAllCommon("Magma Fincorp Ltd.", Colors.orange),
          verticalSizeBox(12),
          cardAllCommon("India Infoline Ltd.", Colors.deepPurple),
          verticalSizeBox(12),
          cardAllCommon(
              "Five Star Business Credits Ltd.", Colors.deepOrangeAccent),
          verticalSizeBox(12),
          cardAllCommon("Intec Capital Ltd.", Colors.teal),
          verticalSizeBox(12),
          cardAllCommon("IKF Finance Ltd.", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon("Sakthi Finance Ltd.", Colors.lightBlue),
          verticalSizeBox(12),
          cardAllCommon("SE Investments Ltd.", Colors.limeAccent),
          verticalSizeBox(12),
          cardAllCommon("ECL Finance Ltd.", Colors.pink),
          verticalSizeBox(12)
        ],
      ),
    ),
  );
}
