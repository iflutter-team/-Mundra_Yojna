import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/gridView_controller.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class ComplyToNotice extends StatelessWidget {
  const ComplyToNotice({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GridViewController());
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
          'Comply To Notice',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: complyToNoticeScreen(),
    );
  }
}

Widget complyToNoticeScreen() {
  return GetBuilder<GridViewController>(
    id: 'ComplyToNotice',
    builder: (controller) => ListView(
      children: [
        verticalSizeBox(Get.height * 0.030),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: Get.width * 0.90,
            child: const Text(
              StringRes.complyToNotice,
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
                onPressed: () =>controller.complyToNoticeScreenUrl,
                minHeight: 55,
                minWidth: Get.width * 0.90,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
