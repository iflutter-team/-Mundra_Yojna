import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class MudraYojna extends StatelessWidget {
  const MudraYojna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GetBuilder<HomeController>(
          builder: (controller) {
            return IconButton(
                onPressed: () {
                  controller.showInter();
                  Get.to(() => const HomeScreen());
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ));
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "प्रधानमंत्री मुद्रा योजना",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.purple.shade300),
            ),
            const Text(
              "पुंजी सफ़लता की कुंजी",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14),
            ),
          ],
        ),
      ),
      body: mudraPageBody(),
    );
  }
}
