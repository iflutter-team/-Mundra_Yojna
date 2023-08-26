import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_yojna_page2.dart';
import 'package:mudra_yojana/screen/all_government_screen/gopniyta/gopniyta_page3.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class GopNiytaPage2 extends StatelessWidget {
  const GopNiytaPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (controller) {
          return controller.nativeAd();
        },
      ),
      appBar: mudraPageAppBar(),
      body: pradhanMantriMudraYojna(
        () => const GopNiytaPage3(),
      ),
    );
  }
}
