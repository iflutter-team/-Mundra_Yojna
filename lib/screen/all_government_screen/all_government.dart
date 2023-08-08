import 'package:flutter/material.dart';
import 'package:mudra_yojana/common_widget/app_bar_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_yojna_widget.dart';

class AllGovernmentScreen extends StatelessWidget {
  const AllGovernmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCommon(title: "All Government Yojna"),
      body: allYojnaBody(),
    );
  }
}
