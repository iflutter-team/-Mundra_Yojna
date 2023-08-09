import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class AllYojnaPage2 extends StatelessWidget {
  const AllYojnaPage2({super.key});

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
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'प्रधान मंत्री मुद्रा योजना',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            Text(
              'पुंजी सफ़लता की कुंजी',
              style: TextStyle(color: Colors.purple, fontSize: 11),
            ),
          ],
        ),
      ),
      body: pradhanMantriMudraYojna(),
    );
  }
}

Widget pradhanMantriMudraYojna() {
  return ListView(
    children: [
      verticalSizeBox(Get.height * 0.040),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: Get.height * 0.28,
          width: Get.width * 0.91,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.030),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.pradhanMantriYojna1,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.030),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.pradhanMantriYojna2,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      verticalSizeBox(Get.height * 0.050),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: Get.width * 0.90,
          child: const Text(
            StringRes.pradhanMantriYojna3,
            style: TextStyle(
              fontSize: 15,
            ),
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
