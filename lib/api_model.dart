import 'dart:convert';

ProductId productIdFromJson(String str) => ProductId.fromJson(json.decode(str));

String productIdToJson(ProductId data) => json.encode(data.toJson());

class ProductId {
  int? id;
  String? appName;
  String? enableGoogleAdmobId;
  String? googleOpenappId;
  String? googleAdmobBannerId;
  String? googleAdmobNativeId;
  String? googleAdmobInterstitialId;
  String? enableFacebookId;
  String? facebookOpenId;
  String? facebookBannerId;
  String? facebookNativeId;
  String? facebookInterstitialId;
  String? enableBackButton;
  String? backButtonInterSkip;
  String? skipOpenAd;
  String? skipBannerAd;
  String? skipNativeAd;
  String? skipInterAd;
  String? extraSwitch1;
  String? extraSwitch2;
  String? extraSwitch3;
  String? extraText1;
  String? extraText2;
  String? extraText3;
  String? extraText4;

  ProductId({
    this.id,
    this.appName,
    this.enableGoogleAdmobId,
    this.googleOpenappId,
    this.googleAdmobBannerId,
    this.googleAdmobNativeId,
    this.googleAdmobInterstitialId,
    this.enableFacebookId,
    this.facebookOpenId,
    this.facebookBannerId,
    this.facebookNativeId,
    this.facebookInterstitialId,
    this.enableBackButton,
    this.backButtonInterSkip,
    this.skipOpenAd,
    this.skipBannerAd,
    this.skipNativeAd,
    this.skipInterAd,
    this.extraSwitch1,
    this.extraSwitch2,
    this.extraSwitch3,
    this.extraText1,
    this.extraText2,
    this.extraText3,
    this.extraText4,
  });

  factory ProductId.fromJson(Map<String, dynamic> json) => ProductId(
        id: json["id"],
        appName: json["app_name"],
        enableGoogleAdmobId: json["enable_google_admob_id"],
        googleOpenappId: json["google_openapp_id"],
        googleAdmobBannerId: json["google_admob_banner_id"],
        googleAdmobNativeId: json["google_admob_native_id"],
        googleAdmobInterstitialId: json["google_admob_interstitial_id"],
        enableFacebookId: json["enable_facebook_id"],
        facebookOpenId: json["facebook_open_id"],
        facebookBannerId: json["facebook_banner_id"],
        facebookNativeId: json["facebook_native_id"],
        facebookInterstitialId: json["facebook_interstitial_id"],
        enableBackButton: json["enable_back_button"],
        backButtonInterSkip: json["back_button_inter_skip"],
        skipOpenAd: json["skip_open_ad"],
        skipBannerAd: json["skip_banner_ad"],
        skipNativeAd: json["skip_native_ad"],
        skipInterAd: json["skip_inter_ad"],
        extraSwitch1: json["extra_switch_1"],
        extraSwitch2: json["extra_switch_2"],
        extraSwitch3: json["extra_switch_3"],
        extraText1: json["extra_text_1"],
        extraText2: json["extra_text_2"],
        extraText3: json["extra_text_3"],
        extraText4: json["extra_text_4"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "app_name": appName,
        "enable_google_admob_id": enableGoogleAdmobId,
        "google_openapp_id": googleOpenappId,
        "google_admob_banner_id": googleAdmobBannerId,
        "google_admob_native_id": googleAdmobNativeId,
        "google_admob_interstitial_id": googleAdmobInterstitialId,
        "enable_facebook_id": enableFacebookId,
        "facebook_open_id": facebookOpenId,
        "facebook_banner_id": facebookBannerId,
        "facebook_native_id": facebookNativeId,
        "facebook_interstitial_id": facebookInterstitialId,
        "enable_back_button": enableBackButton,
        "back_button_inter_skip": backButtonInterSkip,
        "skip_open_ad": skipOpenAd,
        "skip_banner_ad": skipBannerAd,
        "skip_native_ad": skipNativeAd,
        "skip_inter_ad": skipInterAd,
        "extra_switch_1": extraSwitch1,
        "extra_switch_2": extraSwitch2,
        "extra_switch_3": extraSwitch3,
        "extra_text_1": extraText1,
        "extra_text_2": extraText2,
        "extra_text_3": extraText3,
        "extra_text_4": extraText4,
      };
}
