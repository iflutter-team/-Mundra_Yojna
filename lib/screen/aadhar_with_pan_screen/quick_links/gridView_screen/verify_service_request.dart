import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/gridView_controller.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/quick_link_screen.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class VerifyServiceRequest extends StatelessWidget {
  const VerifyServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (controller) {
          return controller.nativeAd();
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Verify Service Request',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: verifyServiceRequestScreen(),
    );
  }
}

Widget verifyServiceRequestScreen() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        SizedBox(height: 20),
        GetBuilder<HomeController>(
          id: "VerifyServiceRequest",
          builder: (controller) {
            return ButtonWidget(
              textSize: 25,
              textColor: Colors.white,
              text: 'N E X T',
              color: Colors.red,
              onPressed: () => QuickLinksScreen(),
              minHeight: 55,
              minWidth: Get.width * 0.90,
            );
          },
        ),
        verticalSizeBox(Get.height * 0.030),
        cardAllCommon(StringRes.verifyServiceRequest, Colors.deepPurple),
        verticalSizeBox(Get.height * 0.010),
      ],
    ),
  );
}
