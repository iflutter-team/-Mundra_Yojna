import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/gridView_controller.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/quick_link_screen.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class EVerifyScreen extends StatelessWidget {
  const EVerifyScreen({super.key});

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
          'e-Verify Return',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: eVerifyReturnPage(),
    );
  }
}

Widget eVerifyReturnPage() {
  return ListView(
    physics: const BouncingScrollPhysics(),
    children: [
      SizedBox(height: 20),
      GetBuilder<HomeController>(
        id: "eVerifyReturn",
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
      verticalSizeBox(20),
      cardAllCommon(StringRes.eVerifyReturn1, Colors.blue),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn2, Colors.pinkAccent),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn3, Colors.orangeAccent),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn4, Colors.teal),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn5, Colors.lightBlueAccent),
      verticalSizeBox(Get.height * 0.060),
      cardAllCommon(StringRes.eVerifyReturn6, Colors.pink),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn7, Colors.indigoAccent),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn8, Colors.blueGrey),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn9, Colors.brown),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn10, Colors.teal),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn11, Colors.lime),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn12, Colors.pink),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn13, Colors.deepPurple),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn14, Colors.green),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn15, Colors.deepOrange),
      verticalSizeBox(15),
      cardAllCommon(StringRes.eVerifyReturn16, Colors.lightBlue),
      verticalSizeBox(100),
    ],
  );
}
