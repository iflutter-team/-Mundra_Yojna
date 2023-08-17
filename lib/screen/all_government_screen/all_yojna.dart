import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavashyak_dastavej/dastavej_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavedan_prakriya/aavedan_prakriya_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavedan_purve_taiyari/purve_tyari_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/apatrata/apatrata_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/aswikaran/aswikaran_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/copyright_niti/copyright_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/gopniyta/gopniyta_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/kriyanvayan/kriyanvayan_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/niyam_and_sharat/nitamandsharat_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/patrata/patrata_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/prasasanik_nirdesh/prasasanik_nirdesh_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/sitemap/sitemap_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/yojna_k_laabh/yojna_k_laabh_page1.dart';
import 'package:mudra_yojana/screen/all_government_screen/yojna_udeshya/yojna_udeshya_page1.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class AllYojna extends StatelessWidget {
  const AllYojna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GetBuilder<HomeController>(
          builder: (controller) {
            return IconButton(
                onPressed: () {
                  controller.showInter();
                  Get.to(() => const HomeScreen());
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ));
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "प्रधानमंत्री मुद्रा योजना",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.purple.shade300),
            ),
            const Text(
              "पुंजी सफ़लता की कुंजी",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14),
            ),
          ],
        ),
      ),
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
            commonBox(Colors.green.shade200, Colors.transparent,
                "आवश्यक दस्तावेज़", () => const DastavejPage1(), Colors.blue),
            commonBox(
                Colors.redAccent.shade100,
                Colors.transparent,
                "आवेदन पूर्व तैयारियां",
                () => const PurveTyariPage1(),
                Colors.pinkAccent)
          ],
        ),
        Row(
          children: [
            commonBox(
                Colors.blueAccent.shade100,
                Colors.transparent,
                "योजना के उदेश्य",
                () => const YojnaUdeshyaPage1(),
                Colors.redAccent),
            commonBox(
                Colors.blueGrey.shade300,
                Colors.transparent,
                "आवेदन प्रक्रिया",
                () => const AavedanPrakriyaPage1(),
                Colors.green.shade300)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.orangeAccent.shade200, Colors.transparent,
                "पात्रता", () => const PatrataPage1(), Colors.blueGrey),
            commonBox(Colors.deepPurple.shade300, Colors.transparent,
                "अपात्रता", () => const ApatrataPage1(), Colors.brown)
          ],
        ),
        Row(
          children: [
            commonBox(Colors.pinkAccent.shade200, Colors.transparent,
                "योजना के लाभ", () => const YojnaKLaabhPage1(), Colors.cyan),
            commonBox(Colors.indigo.shade300, Colors.transparent, "क्रियान्वयन",
                () => const KriyanVayanPage1(), Colors.redAccent)
          ],
        ),
        Row(
          children: [
            commonBox(
                Colors.brown.shade400,
                Colors.transparent,
                "प्रशासनिक निर्देश",
                () => const PrasasnikNirdeshPage1(),
                Colors.indigo),
            commonBox(Colors.lightGreen.shade400, Colors.transparent,
                "अश्वीकरण", () => const AswikaranPage1(), Colors.teal)
          ],
        ),
        Row(
          children: [
            commonBox(
                Colors.teal.shade300,
                Colors.transparent,
                "नियम और शर्तें",
                () => const NiyamAndSharatPage1(),
                Colors.lightGreen),
            commonBox(
                Colors.redAccent.shade200,
                Colors.transparent,
                "कॉपीराइट निति",
                () => const CopyRightPage1(),
                Colors.lightBlueAccent)
          ],
        ),
        Row(
          children: [
            commonBox(
                Colors.amber.shade300,
                Colors.transparent,
                "गोपीनियाता नीति",
                () => const GopNiytaPage1(),
                Colors.purpleAccent),
            commonBox(Colors.blue.shade300, Colors.transparent, "साइटमैप ",
                () => const SiteMapPage1(), Colors.pinkAccent)
          ],
        ),
      ],
    ),
  );
}
