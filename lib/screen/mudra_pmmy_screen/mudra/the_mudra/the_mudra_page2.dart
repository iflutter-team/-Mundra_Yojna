import 'package:flutter/material.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/the_mudra/the_mudra_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_screen_2.dart';

class TheMudraPage2 extends StatelessWidget {
  const TheMudraPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: mudraPage2Body(() => const TheMudraPage3()),
    );
  }
}
