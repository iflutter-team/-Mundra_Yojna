import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_pmmy_screen.dart';
import 'package:mudra_yojana/utils/asset_res.dart';
import 'package:mudra_yojana/utils/string_res.dart';

import '../aadhar_with_pan_screen/addhar_with_pan.dart';
import '../all_government_screen/all_government.dart';

AppBar homePageAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    title: const Text(
      "आधार को पैन कार्ड से लिंक करे",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}

// Widget ads() {
//   return GetBuilder<HomeController>(
//     id: "ads",
//     builder: (controller) {
//       return controller.currentAd;
//     },
//   );
// }

Widget homePageBody() {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      children: [
        verticalSizeBox(20),
        yojnaSubmitButton(),
        verticalSizeBox(15),
        cardCommon(StringRes.homePageMudraPmmy,
            "प्रधानमंत्री मुद्रा योजना(PMMY)", () => MudraPmmYScreen(),
            image: AssetRes.mudraHome),
        verticalSizeBox(10),
        cardCommon(
          image: AssetRes.mudraYojna,
          StringRes.homePageMudraPmmy,
          "All Government Yojna's",
          () => AllGovernmentScreen(),
        ),
        verticalSizeBox(10),
        cardCommon(
          image: AssetRes.link,
          StringRes.aadhaarWithPanHome,
          "Link Aadhaar with Pan Card",
          () => AadhaarWithPan(),
        ),
        verticalSizeBox(20),
      ],
    ),
  );
}

Widget yojnaSubmitButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: ButtonWidget(
        text: "Yojna Page",
        textColor: Colors.white,
        textSize: 22,
        color: Colors.red,
        fontWeight: FontWeight.bold,
        icon: Icons.arrow_forward_outlined,
        minHeight: Get.height * 0.070,
        onPressed: () => AllGovernmentScreen()),
  );
}

Widget cardCommon(String text, String buttonText, Function() onPressed,
    {String? image}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade200,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            verticalSizeBox(10),
            Container(
              height: Get.width * 0.50,
              width: Get.width,
              child: image != null
                  ? Image.asset(
                      image,
                      fit: BoxFit.fill,
                    )
                  : const SizedBox(),
            ),
            verticalSizeBox(12),
            Text(
              text,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 18.5),
            ),
            verticalSizeBox(20),
            ButtonWidget(
              text: buttonText,
              color: Colors.redAccent,
              textSize: 19,
              textColor: Colors.white,
              fontWeight: FontWeight.bold,
              minHeight: Get.height * 0.065,
              minWidth: Get.width * 0.75,
              onPressed: onPressed,
            ),
            verticalSizeBox(10),
          ],
        ),
      ),
    ),
  );
}
