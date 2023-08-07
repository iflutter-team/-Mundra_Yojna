import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/addhar_with_pan.dart';

void main() {
  runApp(
    const GetMaterialApp(
      home: AadhaarWithPan(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
