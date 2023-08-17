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
      body: pradhanMantriMudraYojna(() => const AllYojna()),
    );
  }
}

Widget pradhanMantriMudraYojna(onPressed) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            alignment: Alignment.topLeft,
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(AssetRes.shivrajSinh),
          ),
          verticalSizeBox(5),
          Container(
            decoration: BoxDecoration(
                color: Colors.indigo, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "श्री शिवराज सिंह चौहान",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  verticalSizeBox(3),
                  const Text(
                    "(माननीय मुख्यमंत्री, मध्य प्रदेश)",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
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
    ),
  );
}
