import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_yojna_page2.dart';
import 'package:mudra_yojana/utils/asset_res.dart';

class AllYojnaPage1 extends StatelessWidget {
  const AllYojnaPage1({super.key});

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
      ),
      body: mukhyMantriLaadliYojna(),
    );
  }
}

Widget mukhyMantriLaadliYojna() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
    child: Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: Get.height * 0.25,
            width: Get.width * 0.91,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  AssetRes.aadharToPanLinkImage,
                  scale: 4,
                ),
              ],
            ),
          ),
        ),
        verticalSizeBox(Get.height * 0.025),
        Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'मुख्यमंत्री लाडली बहन योजना',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            verticalSizeBox(Get.height * 0.040),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'शशकत महिला. शशकत परिवार.\nश्शक्त समाज. श्शक्त प्रदेश। शशक्त देश।',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
            verticalSizeBox(30),
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
                    onPressed: () {
                      Get.to(() => const AllYojnaPage2());
                    },
                    minHeight: 55,
                    minWidth: Get.width * 0.90,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
