import 'package:flutter/material.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/bank_list/bank_list_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_screen_2.dart';

class BankListPage2 extends StatelessWidget {
  const BankListPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: mudraPage2Body(
        () => const BankListPage3(),
      ),
    );
  }
}
