import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';

AppBar appBarCommon({String? title, Function()? onPressed, IconData? icon}) {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        title ?? "",
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      centerTitle: true,
      leading: GetBuilder<HomeController>(
        id: "appBarCommon",
        builder: (controller) {
          return IconButton(
              onPressed: () {
                onPressed ?? Get.back();
              },
              icon: Icon(
                icon ?? Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ));
        },
      ));
}
