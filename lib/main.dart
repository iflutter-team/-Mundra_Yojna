import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_government.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen.dart';

void main() {
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllGovernmentScreen(),
    ),
  );
}
