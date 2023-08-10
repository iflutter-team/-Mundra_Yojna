import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mudra_yojana/utils/string_res.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/sitemap/sitemap_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class SiteMapPage1 extends StatelessWidget {
  const SiteMapPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(
                () => const SiteMapPage2(),
          ),
        ),
      ),
      appBar: mudraPageAppBar(),
      body: siteMapPageView(),
    );
  }
}


Widget siteMapPageView (){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSizeBox(15),
          containerCommon(Colors.deepOrange, 'साइट मैप'),
          verticalSizeBox(Get.height*0.030),
          cardAllCommon(StringRes.siteMapPagePart1, Colors.green),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.siteMapPagePart2, Colors.deepOrange),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.siteMapPagePart3, Colors.greenAccent),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.siteMapPagePart4, Colors.limeAccent),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.siteMapPagePart5, Colors.pinkAccent),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.siteMapPagePart6, Colors.teal),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.siteMapPagePart7, Colors.purpleAccent),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.siteMapPagePart8, Colors.pinkAccent),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.siteMapPagePart9, Colors.deepOrange),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.siteMapPagePart10, Colors.lightBlueAccent),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.siteMapPagePart11, Colors.greenAccent),
        ],
      ),
    ),
  );
}
