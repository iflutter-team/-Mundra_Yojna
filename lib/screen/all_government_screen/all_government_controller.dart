import 'package:get/get.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';

class AllGovernmentController extends GetxController {
  HomeController homeController = Get.put(HomeController());
  @override
  void onInit() {
    homeController.loadInterstitialAd();
    update(["Yojna Page"]);
    super.onInit();
  }
}
