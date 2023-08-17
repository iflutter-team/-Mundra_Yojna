import 'package:flutter/material.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/covered_businesses/covered_businesses_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_screen_2.dart';

class BusinessesPage2 extends StatelessWidget {
  const BusinessesPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: mudraPage2Body(
        () => const BusinessesPage3(),
      ),
    );
  }
}
