import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/copyright_niti/copyright_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class CopyRightPage1 extends StatelessWidget {
  const CopyRightPage1({super.key});

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
          color: Colors.brown,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(
                () => const CopyRightNitiPage2(),
          ),
        ),
      ),
      appBar: mudraPageAppBar(),
      body: copyRight1ScreenView(),
    );
  }
}


Widget copyRight1ScreenView (){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSizeBox(15),
          containerCommon(Colors.black, 'कॉपीराइट नीति'),
          verticalSizeBox(Get.height*0.030),
          cardAllCommon(StringRes.copyRightPart1, Colors.green),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.copyRightPart2, Colors.deepOrange),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.copyRightPart3, Colors.greenAccent),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.copyRightPart4, Colors.limeAccent),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.copyRightPart5, Colors.pinkAccent),
          verticalSizeBox(Get.height*0.020),
          cardAllCommon(StringRes.copyRightPart6, Colors.teal),
        ],
      ),
    ),
  );
}