import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/quick_link_widget.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';

class QuickLinksScreen extends StatelessWidget {
  const QuickLinksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Quick Links',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: quickLinksScreenGridview(),
    );
  }
}
