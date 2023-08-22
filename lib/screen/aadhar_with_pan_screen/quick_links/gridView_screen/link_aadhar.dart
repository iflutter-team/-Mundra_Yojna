import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/gridView_controller.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/quick_link_screen.dart';

import '../../../../utils/string_res.dart';

class LinkAadharScreen extends StatelessWidget {
  const LinkAadharScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GridViewController());
    return Scaffold(
      floatingActionButton: ButtonWidget(
        textSize: 25,
        textColor: Colors.white,
        text: 'N E X T',
        color: Colors.red,
        onPressed: () => QuickLinksScreen(),
        minHeight: 55,
        minWidth: Get.width * 0.90,
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
          'Link Aadhar',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: linkAadharScreen(),
    );
  }
}

Widget linkAadharScreen() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: ListView(
      children: [
        verticalSizeBox(Get.height * 0.030),
        cardAllCommon(StringRes.linkAadhar, Colors.pink),
        verticalSizeBox(10),
        cardAllCommon(StringRes.linkAadhar1, Colors.green),
        cardAllCommon(StringRes.linkAadharNote, Colors.pink),
        verticalSizeBox(Get.height * 0.15),
      ],
    ),
  );
}
