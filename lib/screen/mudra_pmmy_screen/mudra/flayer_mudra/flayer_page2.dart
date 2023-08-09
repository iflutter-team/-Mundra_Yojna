import 'package:flutter/material.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class FlayerPage2 extends StatelessWidget {
  const FlayerPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: flayerPage2Body(),
    );
  }
}

Widget flayerPage2Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [containerCommon(Colors.purple, "• Back •")],
      ),
    ),
  );
}
