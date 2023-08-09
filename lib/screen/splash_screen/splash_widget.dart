import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/utils/asset_res.dart';

Widget splashScreenView (){
  return SizedBox(
    height: Get.height,
    width: Get.width,
    child: Image.asset(AssetRes.splashScreen),
  );
}