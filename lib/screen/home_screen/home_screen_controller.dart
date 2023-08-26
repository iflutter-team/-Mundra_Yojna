import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/api_model.dart';
import 'package:mudra_yojana/screen/home_screen/home_page_api.dart';

class HomeController extends GetxController {
  ProductId? productId;

  @override
  void onInit() {
    apiGet();
    super.onInit();
  }

  Future<void> apiGet() async {
    productId = await HomeScreenApi.getData();
  }

  showInter() {
    if (productId!.enableFacebookId == "0") {
      print("=======================================>fafna");
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

  Widget showBannerAd() {
    return productId!.enableFacebookId == "0"
        ? FacebookBannerAd(
            placementId: productId!.facebookBannerId!,
            bannerSize: BannerSize.STANDARD,
            listener: (result, value) {
              if (kDebugMode) {
                print(
                    "Banner Ad=================================================================================: $result -->  $value");
              }
            },
          )
        : currentAd;
  }

  Widget nativeBannerAd() {
    return productId!.enableFacebookId == "0"
        ? FacebookNativeAd(
            placementId: productId!.facebookNativeId!,
            adType: NativeAdType.NATIVE_BANNER_AD,
            bannerAdSize: NativeBannerAdSize.HEIGHT_100,
            width: double.infinity,
            height: 300,
            titleColor: Colors.white,
            descriptionColor: Colors.white,
            buttonColor: Colors.deepPurple,
            buttonTitleColor: Colors.white,
            buttonBorderColor: Colors.white,
            listener: (result, value) {
              print("Native Banner Ad: $result --> $value");
            },
          )
        : currentAd;
  }

  Widget nativeAd() {
    return productId!.enableFacebookId == "0"
        ? FacebookNativeAd(
            placementId: productId!.facebookNativeId!,
            adType: NativeAdType.NATIVE_AD_VERTICAL,
            width: double.infinity,
            height: 250,
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
            expandAnimationDuraion: 0,
          )
        : currentAd;
  }

  Widget currentAd = SizedBox(
    width: 0.0,
    height: 0.0,
  );
}
