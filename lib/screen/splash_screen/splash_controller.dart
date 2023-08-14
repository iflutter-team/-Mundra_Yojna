import 'dart:async';

import 'package:get/get.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 5), () => Get.off(() => const HomeScreen()));
    super.onInit();
  }
}