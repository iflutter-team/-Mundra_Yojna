import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/splash_screen/splash_controller.dart';
import 'package:mudra_yojana/screen/splash_screen/splash_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: splashScreenView(),
    );
  }
}
