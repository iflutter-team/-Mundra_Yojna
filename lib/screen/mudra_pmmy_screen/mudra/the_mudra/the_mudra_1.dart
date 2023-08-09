import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

import 'the_mudra_page2.dart';

class TheMudraPage1 extends StatelessWidget {
  const TheMudraPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              containerCommon(Colors.pink, "•    The MUDRA  •"),
              verticalSizeBox(15),
              Card(
                color: Colors.blueGrey.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const Text(
                        "In the above backdrop the Micro Units Development & Refinance Agency Ltd (MUDRA) was set up by the Government of India (Gol). MUDRA has been initially formed as a wholly owned subsidiary of Small Industries Development bank of India (SIDBI) with 100% capital being contributed by it. Presently, the authorized capital of MUDRA is 1000 crores and paid up capital is 750 crore, fully subscribed by SIDBI. More capital is expected to enhance the functioning of MUDRA.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      verticalSizeBox(10),
                      const Text(
                        "This Agency would be responsible for developing and refinancing all Micro- enterprises sector by supporting the finance Institutions which are in the business of lending to micro / small business entities engaged in manufacturing, trading and service activities. MUDRA would partner with Banks, MFIS and other lending institutions at state level / regional level to provide micro finance support to the micro enterprise sector in the country.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      verticalSizeBox(10),
                      const Text(
                        "Micro Finance is an economic development tool whose objective is to provide income generating opportunities to the people at the bottom of the pyramid. It covers a range of services which include, in addition to the provision of credit, many other credit plus services, financial literacy and other social support services.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      verticalSizeBox(10),
                      const Text(
                        "MUDRA has been formed with primary objective of developing the micro enterprise sector in the country by extending various support including financial support in the form of refinance, so as to achieve the goal of â€œfunding the unfundedâ€. The GOI Press release of 2 March 2015 has laid down the roles and responsibilities of MUDRA.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      verticalSizeBox(10),
                      const Text(
                        "Subsequently GOI has also decided that MUDRA will provide refinance support, monitor the PMMY data by managing the web portal, facilitate offering guarantees for loans granted under PMMY and take up other activities assigned to it from time to time.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      verticalSizeBox(15),
                    ],
                  ),
                ),
              ),
              verticalSizeBox(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ButtonWidget(
                  text: "N E X T",
                  textColor: Colors.white,
                  textSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                  minHeight: Get.height * 0.065,
                  onPressed: () => Get.to(() => const TheMudraPage2()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
