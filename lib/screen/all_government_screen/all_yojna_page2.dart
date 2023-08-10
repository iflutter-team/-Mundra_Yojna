import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_yojna.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/utils/asset_res.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class AllYojnaPage2 extends StatelessWidget {
  const AllYojnaPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: pradhanMantriMudraYojna(() => Get.to(() => const AllYojna())),
    );
  }
}

Widget pradhanMantriMudraYojna(Function() onPressed) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: ListView(
      children: [
        verticalSizeBox(20),
        ButtonWidget(
          textSize: 25,
          textColor: Colors.white,
          text: 'आगे बढे',
          color: Colors.red,
          onPressed: onPressed,
          minHeight: 55,
        ),
        verticalSizeBox(15),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(AssetRes.pm),
        ),
        verticalSizeBox(15),
        SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.pradhanMantriYojna1,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        verticalSizeBox(12),
        SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.pradhanMantriYojna2,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        verticalSizeBox(20),
        SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.pradhanMantriYojna3,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        verticalSizeBox(Get.height * 0.10),
      ],
    ),
  );
}
