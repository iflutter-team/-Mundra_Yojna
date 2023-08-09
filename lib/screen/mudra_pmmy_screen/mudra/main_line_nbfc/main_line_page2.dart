import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/main_line_nbfc/main_line_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_screen_2.dart';

class LinkPage2 extends StatelessWidget {
  const LinkPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: mudraPage2Body(() => Get.to(()=>const LinkPage3())),
    );
  }
}
