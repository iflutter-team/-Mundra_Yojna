import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavashyak_dastavej/dastavej_page1.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class AllYojna extends StatelessWidget {
  const AllYojna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: allYoujnaBody(),
    );
  }
}

Widget allYoujnaBody() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Row(
          children: [
            commonBox(
                Colors.green.shade200,
                Colors.transparent,
                "आवश्यक दस्तावेज़",
                () => Get.to(() => const DastavejPage1()),
                Colors.blue),
            commonBox(Colors.redAccent.shade100, Colors.transparent,
                "आवेदन पूर्व तैयारियां", () {}, Colors.pinkAccent)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.blueAccent.shade100, Colors.transparent,
                "योजना के उदेश्य", () {}, Colors.redAccent),
            commonBox(Colors.blueGrey.shade300, Colors.transparent,
                "आवेदन प्रक्रिया", () {}, Colors.green.shade300)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.orangeAccent.shade200, Colors.transparent,
                "पात्रता", () {}, Colors.blueGrey),
            commonBox(Colors.deepPurple.shade300, Colors.transparent,
                "अपात्रता", () {}, Colors.brown)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.pinkAccent.shade200, Colors.transparent,
                "योजना के लाभ", () {}, Colors.cyan),
            commonBox(Colors.indigo.shade300, Colors.transparent, "क्रियान्वयन",
                () {}, Colors.redAccent)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.brown.shade400, Colors.transparent,
                "प्रशासनिक निर्देश", () {}, Colors.indigo),
            commonBox(Colors.lightGreen.shade400, Colors.transparent,
                "अश्वीकरण", () {}, Colors.teal)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.teal.shade300, Colors.transparent,
                "नियम और शर्तें", () {}, Colors.lightGreen),
            commonBox(Colors.redAccent.shade200, Colors.transparent,
                "कॉपीराइट निति", () {}, Colors.blueGrey)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.amber.shade300, Colors.transparent,
                "गोपीनियाता नीति", () {}, Colors.purpleAccent),
            commonBox(Colors.blue.shade300, Colors.transparent, "साइटमैप ",
                () {}, Colors.pinkAccent)
          ],
        ),
      ],
    ),
  );
}
