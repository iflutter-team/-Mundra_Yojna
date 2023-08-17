import 'package:flutter/material.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/faqs_loan/faqs_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_screen_2.dart';

class FaqsPage2 extends StatelessWidget {
  const FaqsPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: mudraPage2Body(() => const FaqsPage3()),
    );
  }
}
