import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/api_model.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/addhar_with_pan.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_government.dart';
import 'package:mudra_yojana/screen/home_screen/home_page_api.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_pmmy_screen.dart';

class HomeController extends GetxController {
  ProductId? productId;
  bool isRewardedAdLoaded = false;
  bool isInterstitialAdLoaded = false;

  @override
  Future<void> onInit() async {
    await apiGet();
    FacebookAudienceNetwork.init();
    super.onInit();
  }

  Future<void> apiGet() async {
    productId = await HomeScreenApi.getData();
  }

  Future<void> goToYojnaPage() async {
    Get.to(() => const AllGovernmentScreen());
  }

  void goToMudraPmmYScreen() {
    Get.to(() => MudraPmmYScreen());
  }

  void goToAllGovernmentYojna() {
    Get.to(() => const AllGovernmentScreen());
  }

  Future<void> goToAadhaarWithPan() async {
    showInter();
    update(["Link Aadhaar with Pan Card"]);
    Get.to(() => const AadhaarWithPan());
  }

  showInter() {
    if (productId!.enableFacebookId == "1") {
      FacebookInterstitialAd.loadInterstitialAd(
        placementId: productId!.facebookInterstitialId!,
        listener: (result, value) {
          if (result == InterstitialAdResult.LOADED)
            FacebookInterstitialAd.showInterstitialAd(delay: 0);
        },
      );
    } else {
      return null;
    }
    update(["mudraApp", "buttonCommon"]);
  }

  showBannerAd() {
    currentAd = FacebookBannerAd(
      placementId: productId!.facebookBannerId!,
      bannerSize: BannerSize.STANDARD,
      listener: (result, value) {
        if (kDebugMode) {
          print("Banner Ad: $result -->  $value");
        }
      },
    );
  }

  void rewardedAds() {
    FacebookRewardedVideoAd.loadRewardedVideoAd(
      placementId: "YOUR_PLACEMENT_ID",
      listener: (result, value) async {
        if (productId!.enableFacebookId == "0") {
          print("==============> ${productId!.enableFacebookId}");
          await FacebookRewardedVideoAd.showRewardedVideoAd();
        }
        update(["buttonCommon"]);
      },
    );
  }

  Widget nativeBannerAd() {
    return FacebookNativeAd(
      placementId: productId!.facebookNativeId!,
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
        print("Native Banner Ad: $result --> $value");
      },
    );
    update(["buttonCommon"]);
  }

  Widget nativeAd() {
    return FacebookNativeAd(
      placementId: productId!.facebookNativeId!,
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
        print("Native Ad: $result --> $value");
      },
      keepExpandedWhileLoading: true,
      expandAnimationDuraion: 1000,
    );
  }

  Widget currentAd = SizedBox(
    width: 0.0,
    height: 0.0,
  );
}