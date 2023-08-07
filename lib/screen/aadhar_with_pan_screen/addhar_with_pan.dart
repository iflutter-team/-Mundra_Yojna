import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/aadhar_with_pan_controller.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/aadhar_with_pan_widget.dart';

class AadhaarWithPan extends StatelessWidget {
  const AadhaarWithPan({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AadharWithPanScreenController());
    return Scaffold(
      body: aadharWithPanScreenView(),
    );
  }
}
