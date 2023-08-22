import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/gridView_controller.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/quick_link_screen.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';

class LinkAadharStatus extends StatelessWidget {
  const LinkAadharStatus({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GridViewController());
    return Scaffold(
      backgroundColor: const Color(0xfffef4f3),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GetBuilder<HomeController>(
          builder: (controller) {
            return IconButton(
              onPressed: () {
                controller.showInter();
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            );
          },
        ),
        title: const Text(
          'Link Aadhar Status',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: linkAadharStatusScreen(),
    );
  }
}

Widget linkAadharStatusScreen() {
  return GetBuilder<GridViewController>(
    id: 'LinkAadharStatus',
    builder: (controller) => ListView(
      children: [
        verticalSizeBox(Get.height * 0.030),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset('asserts/images/linkaadharpan.jpeg'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ButtonWidget(
                textSize: 25,
                textColor: Colors.white,
                text: 'Visit Link',
                color: Colors.red,
                onPressed: () => QuickLinksScreen(),
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
