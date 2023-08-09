import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/gridView_controller.dart';
import 'package:mudra_yojana/utils/string_res.dart';

class KnowPaymentStatus extends StatelessWidget {
  const KnowPaymentStatus({super.key});

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
          'Know Payment Status',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: knowPaymentStatusScreen(),
    );
  }
}

Widget knowPaymentStatusScreen() {
  return GetBuilder<GridViewController>(
    id: 'KnowPaymentStatus',
    builder: (controller) => ListView(
      children: [
        verticalSizeBox(Get.height * 0.030),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: Get.width * 0.90,
            child: const Text(
              StringRes.knowPaymentStatus,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        verticalSizeBox(Get.height * 0.15),
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
                onPressed: () =>controller.knowPaymentStatus(),
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
