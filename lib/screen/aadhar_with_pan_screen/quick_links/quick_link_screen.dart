import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/quick_link_widget.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/quick_links_controller.dart';

class QuickLinksScreen extends StatelessWidget {
  const QuickLinksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(QuickLinksScreenController());
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
          'Quick Links',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: quickLinksScreenGridview(),
    );
  }
}
