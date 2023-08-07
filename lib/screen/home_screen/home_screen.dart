import 'package:flutter/material.dart';
import 'package:mudra_yojana/screen/home_screen/home_page_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homePageAppBar(),
      body: homePageBody(),
    );
  }
}
