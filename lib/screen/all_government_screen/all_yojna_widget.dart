import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_yojna_page1.dart';
import 'package:mudra_yojana/screen/home_screen/home_page_widget.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/mudra_yojna_page.dart';
import 'package:mudra_yojana/utils/string_res.dart';

Widget allYojnaBody() {
  return ListView(
    children: [
      cardCommon(
        StringRes.homePageMudraPmmy,
        "PMMY",
        () => Get.to(
          () => const MudraYojna(),
        ),
      ),
      verticalSizeBox(10),
      cardCommon(StringRes.homePageMudraPmmy, "Next",
          () => Get.to(() => const AllYojnaPage1())),
    ],
  );
}
