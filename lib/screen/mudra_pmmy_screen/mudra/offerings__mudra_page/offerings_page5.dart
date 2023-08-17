import 'package:flutter/material.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/mudra_yojna_page.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class OfferingPage5 extends StatelessWidget {
  const OfferingPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: mudraPage3Body(() => const MudraYojna()),
    );
  }
}
