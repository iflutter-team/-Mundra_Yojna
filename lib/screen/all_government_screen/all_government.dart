import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/app_bar_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_government_controller.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_yojna_widget.dart';

class AllGovernmentScreen extends StatelessWidget {
  const AllGovernmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AllGovernmentController());
    return Scaffold(
      appBar: appBarCommon(title: "All Government Yojna"),
      body: allYojnaBody(),
    );
  }
}
