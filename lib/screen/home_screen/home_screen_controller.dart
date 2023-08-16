import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/api_model.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/addhar_with_pan.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_government.dart';
import 'package:mudra_yojana/screen/home_screen/home_page_api.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_pmmy_screen.dart';

class HomeController extends GetxController {
  ProductId? productId;

  @override
  Future<void> onInit() async {
    await apiGet();
    FacebookAudienceNetwork.init();
    await showInter();
    super.onInit();
  }

  Future<void> apiGet() async {
    productId = await HomeScreenApi.getData();
    update(["Link Aadhaar with Pan Card"]);
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

  Future<void> goToAadhaarWithPan() async {
    await showInter();
    update(["Link Aadhaar with Pan Card"]);
    Get.to(() => const AadhaarWithPan());
  }

  showInter() {
    FacebookInterstitialAd.loadInterstitialAd(
      placementId: productId!.facebookInterstitialId!,
      listener: (result, value) {
        if (result == InterstitialAdResult.LOADED)
          FacebookInterstitialAd.showInterstitialAd(delay: 2000);
      },
    );
  }
}
