import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mudra_yojana/screen/splash_screen/splash_screen.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();
   MobileAds.instance.initialize();
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}