import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/aadhar_with_pan_widget.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';

class AadhaarWithPan extends StatelessWidget {
  const AadhaarWithPan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'आधार को पैनकार्ड से लिंक करें',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: aadharWithPanScreenView(),
    );
  }
}
