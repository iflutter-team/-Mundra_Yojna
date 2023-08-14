import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/addhar_with_pan.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_government.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_pmmy_screen.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    showBannerAd();
    super.onInit();
  }

  Future<void> goToYojnaPage() async {
    await showInterstitialAd();
    update(["Yojna Page"]);
    Get.to(
      () => const AllGovernmentScreen(),
    );
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

  bool isRewardedAdLoaded = false;
  bool isInterstitialAdLoaded = false;
  showInterstitialAd() {
    if (isInterstitialAdLoaded == true) {
      FacebookInterstitialAd.showInterstitialAd();
      update(["ads"]);
    } else if (kDebugMode) {
      print("Interstial Ad not yet loaded!");
    }
  }

  showRewardedAd() {
    if (isRewardedAdLoaded == true) {
      FacebookRewardedVideoAd.showRewardedVideoAd();
    } else if (kDebugMode) {
      print("Rewarded Ad not yet loaded!");
    }
    update(["ads"]);
  }

  showBannerAd() {
    currentAd = FacebookBannerAd(
      placementId:
          "IMG_16_9_APP_INSTALL#2312433698835503_2964944860251047", //testid
      bannerSize: BannerSize.STANDARD,
      listener: (result, value) {
        if (kDebugMode) {
          print("=================> Banner Ad: $result -->  $value");
        }
      },
    );
    update(["ads"]);
  }

  Widget nativeBannerAd() {
    return currentAd = FacebookNativeAd(
      placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2964953543583512",
      adType: NativeAdType.NATIVE_BANNER_AD,
      bannerAdSize: NativeBannerAdSize.HEIGHT_100,
      width: double.infinity,
      backgroundColor: Colors.blue,
      titleColor: Colors.white,
      descriptionColor: Colors.white,
      buttonColor: Colors.deepPurple,
      buttonTitleColor: Colors.white,
      buttonBorderColor: Colors.white,
      listener: (result, value) {
        if (kDebugMode) {
          print("Native Banner Ad: $result --> $value");
        }
      },
    );
  }

  Widget nativeAd() {
    return FacebookNativeAd(
      placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2964952163583650",
      adType: NativeAdType.NATIVE_AD_VERTICAL,
      width: double.infinity,
      height: 300,
      backgroundColor: Colors.blue,
      titleColor: Colors.white,
      descriptionColor: Colors.white,
      buttonColor: Colors.deepPurple,
      buttonTitleColor: Colors.white,
      buttonBorderColor: Colors.white,
      listener: (result, value) {
        if (kDebugMode) {
          print("Native Ad: $result --> $value");
        }
      },
      keepExpandedWhileLoading: true,
      expandAnimationDuraion: 1000,
    );
  }

  void loadInterstitialAd() {
    FacebookInterstitialAd.loadInterstitialAd(
      // placementId: "YOUR_PLACEMENT_ID",
      placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617",
      listener: (result, value) {
        print(">> FAN > Interstitial Ad: $result --> $value");
        if (result == InterstitialAdResult.LOADED)
          isInterstitialAdLoaded = true;

        if (result == InterstitialAdResult.DISMISSED &&
            value["invalidated"] == true) {
          isInterstitialAdLoaded = false;
          loadInterstitialAd();
        }
      },
    );
  }

  Widget currentAd = const SizedBox(
    height: 0.0,
    width: 0.0,
  );
}
