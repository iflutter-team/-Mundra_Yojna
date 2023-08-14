import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/addhar_with_pan.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_government.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_pmmy_screen.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    showInter();
    super.onInit();
  }

  Future<void> goToYojnaPage() async {
    Get.to(() => const AllGovernmentScreen());
  }

  void goToMudraPmmYScreen() {
    Get.to(() => const MudraPmmYScreen());
  }

  void goToAllGovernmentYojna() {
    Get.to(() => const AllGovernmentScreen());
  }

  void goToAadhaarWithPan() {
    Get.to(() => const AadhaarWithPan());
  }

  showInter() {
    FacebookInterstitialAd.loadInterstitialAd(
      placementId: "IMG_16_9_APP_INSTALL#2542154492669100_2542159122668637",
      listener: (result, value) {
        if (result == InterstitialAdResult.LOADED)
          FacebookInterstitialAd.showInterstitialAd(delay: 2000);
      },
    );
  }
}
