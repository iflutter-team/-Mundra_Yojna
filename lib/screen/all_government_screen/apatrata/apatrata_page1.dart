import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/apatrata/apatrata_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

import '../../../common_widget/button_common.dart';

class ApatrataPage1 extends StatelessWidget {
  const ApatrataPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: apatrataPage1Body(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          minHeight: Get.height * 0.065,
          onPressed: () => const ApatrataPage2(),
        ),
      ),
    );
  }
}

Widget apatrataPage1Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSizeBox(10),
          containerCommon(Colors.purple, "• अपात्रता •"),
          verticalSizeBox(15),
          cardAllCommon(
              "जिनके परिवार की सम्मिलित रूप से स्वघोषित वार्षिक आय 2.5 लाख से अधिक हो ।",
              Colors.green),
          verticalSizeBox(12),
          cardAllCommon(
              "जिनके परिवार का कोई भी सदस्य आयकरदाता हो ।", Colors.brown),
          verticalSizeBox(12),
          cardAllCommon(
              "जिनके परिवार का कोई भी सदस्य भारत सरकार अथवा राज्य सरकार के शासकीय विभाग/ उपक्रम / मण्डल / स्थानीय निकाय में नियमित / स्थाईकर्मी/संविदाकर्मी के रूप में नियोजित हो अथवा सेवानिवृत्ति उपरांत पेंशन प्राप्त कर रहा हो ।",
              Colors.pinkAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "जो स्वयं भारत सरकार/ राज्य सरकार की किसी भी योजना अंतर्गत प्रतिमाह राशि रूपये 1000/- या उससे अधिक की राशि प्राप्त कर रही है।",
              Colors.teal),
          verticalSizeBox(12),
          cardAllCommon(
              "जिनके परिवार का कोई सदस्य वर्तमान अथवा भूतपूर्व सांसद / विधायक हो ।",
              Colors.orange),
          verticalSizeBox(12),
          cardAllCommon(
              "जिनके परिवार का कोई सदस्य भारत सरकार अथवा राज्य सरकार के द्वारा चयनित / मनोनित, बोर्ड / निगम / मण्डल / उपक्रम के अध्यक्ष/ संचालक/ सदस्य हो ।",
              Colors.lightBlueAccent),
          verticalSizeBox(12),
          cardAllCommon(
              "जिनके परिवार का कोई सदस्य स्थानीय निकायों में निर्वाचित जनप्रतिनिधि (पंच एवं उपसरपंच को छोडकर) हो।",
              Colors.deepOrange),
          verticalSizeBox(12),
          cardAllCommon(
              "जिनके परिवार के सदस्यों के पास संयुक्त रूप से कुल पाँच एकड़ से अधिक कृषि भूमि हो ।",
              Colors.teal),
          verticalSizeBox(12),
          cardAllCommon(
              "जिनके परिवार के सदस्यों के नाम से पंजीकृत चार पहिया वाहन (ट्रैक्टर सहित) हो।",
              Colors.amber),
          verticalSizeBox(50),
        ],
      ),
    ),
  );
}
