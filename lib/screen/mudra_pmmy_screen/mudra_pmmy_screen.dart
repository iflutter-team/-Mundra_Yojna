import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mudra_yojana/common_widget/app_bar_common.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_screen_1.dart';

class MudraPmmYScreen extends StatelessWidget {
  const MudraPmmYScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCommon(),
      body: mudraPage1(),
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (controller) {
          return SizedBox(
            child: controller.nativeAd(),
          );
        },
      ),
    );
  }
}
