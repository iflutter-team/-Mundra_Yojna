import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class EVerifyScreen extends StatelessWidget {
  const EVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    children: [
      verticalSizeBox(Get.height * 0.030),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn1,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn2,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn3,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn4,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn5,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn6,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn7,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn8,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn9,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn10,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn11,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn12,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn13,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn14,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn15,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.060),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.eVerifyReturn16,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ButtonWidget(
              textSize: 25,
              textColor: Colors.white,
              text: 'N E X T',
              color: Colors.red,
              onPressed: () {},
              minHeight: 55,
              minWidth: Get.width * 0.90,
            ),
          ),
        ],
      ),
    ],
  );
}
