import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';
import 'package:mudra_yojana/utils/asset_res.dart';
import 'package:mudra_yojana/utils/string_res.dart';

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
        GetBuilder<HomeController>(
          builder: (controller) => cardCommon(
              StringRes.homePageMudraPmmy,
              "प्रधानमंत्री मुद्रा योजना(PMMY)",
              () => controller.goToMudraPmmYScreen(),
              image: AssetRes.mudraHome),
        ),
        verticalSizeBox(10),
        GetBuilder<HomeController>(
          builder: (controller) => cardCommon(
            image: AssetRes.mudraYojna,
            StringRes.homePageMudraPmmy,
            "All Government Yojna's",
            () => controller.goToAllGovernmentYojna(),
          ),
        ),
        verticalSizeBox(10),
        GetBuilder<HomeController>(
          id: "Link Aadhaar with Pan Card",
          builder: (controller) => cardCommon(
            image: AssetRes.link,
            StringRes.aadhaarWithPanHome,
            "Link Aadhaar with Pan Card",
            () => controller.goToAadhaarWithPan(),
          ),
        ),
        verticalSizeBox(20),
      ],
    ),
  );
}

Widget yojnaSubmitButton() {
  return GetBuilder<HomeController>(
    id: "Yojna Page",
    builder: (controller) {
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
          onPressed: () => controller.goToYojnaPage(),
        ),
      );
    },
  );
}

Widget cardCommon(String text, String buttonText, Function() onPressed,
    {String? image}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      color: Colors.white10,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.white),
      ),
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
            verticalSizeBox(15),
          ],
        ),
      ),
    ),
  );
}
