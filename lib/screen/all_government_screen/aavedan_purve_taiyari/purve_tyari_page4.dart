import 'package:flutter/material.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_yojna.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_yojna_page2.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class PurveTyariPage4 extends StatelessWidget {
  const PurveTyariPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: pradhanMantriMudraYojna(
        () => const AllYojna(),
      ),
    );
  }
}
