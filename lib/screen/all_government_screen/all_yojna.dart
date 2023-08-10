import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavashyak_dastavej/dastavej_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/aswikaran/aswikaran_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/copyright_niti/copyright_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/gopniyta/gopniyta_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/kriyanvayan/kriyanvayan_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/niyam_and_sharat/nitamandsharat_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/prasasanik_nirdesh/prasasanik_nirdesh_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/sitemap/sitemap_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/yojna_k_laabh/yojna_k_laabh_page1.dart';
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
                "योजना के लाभ", () =>Get.to(()=>const YojnaKLaabhPage1()), Colors.cyan),
            commonBox(Colors.indigo.shade300, Colors.transparent, "क्रियान्वयन",
                () =>Get.to(()=>const KriyanVayanPage1()), Colors.redAccent)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.brown.shade400, Colors.transparent,
                "प्रशासनिक निर्देश", () =>Get.to(()=>const PrasasnikNirdeshPage1()), Colors.indigo),
            commonBox(Colors.lightGreen.shade400, Colors.transparent,
                "अश्वीकरण", () =>Get.to(()=>const AswikaranPage1()), Colors.teal)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.teal.shade300, Colors.transparent,
                "नियम और शर्तें", () =>Get.to(()=>const NiyamAndSharatPage1()), Colors.lightGreen),
            commonBox(Colors.redAccent.shade200, Colors.transparent,
                "कॉपीराइट निति", () => Get.to(()=>const CopyRightPage1()), Colors.lightBlueAccent)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.amber.shade300, Colors.transparent,
                "गोपीनियाता नीति", () =>Get.to(()=>const GopNiytaPage1()), Colors.purpleAccent),
            commonBox(Colors.blue.shade300, Colors.transparent, "साइटमैप ",
                () => Get.to(() => const SiteMapPage1()), Colors.pinkAccent)
          ],
        ),
      ],
    ),
  );
}
