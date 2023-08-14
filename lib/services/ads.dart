import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdsService {
  static bool isRewardedAdLoaded = false;
  static bool isInterstitialAdLoaded = false;

  static showInterstitialAd() {
    if (isInterstitialAdLoaded == true) {
      FacebookInterstitialAd.showInterstitialAd();
    } else if (kDebugMode) {
      print("Interstial Ad not yet loaded!");
    }
  }

  static showRewardedAd() {
    if (isRewardedAdLoaded == true) {
      FacebookRewardedVideoAd.showRewardedVideoAd();
    } else if (kDebugMode) {
      print("Rewarded Ad not yet loaded!");
    }
  }

  static showBannerAd() {
    currentAd = FacebookBannerAd(
      placementId:
          "IMG_16_9_APP_INSTALL#2312433698835503_2964944860251047", //testid
      bannerSize: BannerSize.STANDARD,
      listener: (result, value) {
        if (kDebugMode) {
          print("Banner Ad: $result -->  $value");
        }
      },
    );
  }

  static Widget nativeBannerAd() {
    return FacebookNativeAd(
      // placementId: "YOUR_PLACEMENT_ID",
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

  static Widget nativeAd() {
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

  static Widget currentAd = const SizedBox(
    height: 0.0,
    width: 0.0,
  );
}
