import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/categories_loan/categories_page3.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_screen_2.dart';

class CategoriesPage2 extends StatelessWidget {
  const CategoriesPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: mudraPage2Body(() => Get.to(()=>const CategoriesPage3())),
    );
  }
}
