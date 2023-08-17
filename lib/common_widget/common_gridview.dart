import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';

Widget commonGridView({
  required double radius,
  Color? color,
  String? image,
  onTap,
}) {
  return GetBuilder<HomeController>(
    builder: (controller) {
      return InkWell(
        onTap: () {
          controller.showInter();
          Get.to(onTap);
        },
        child: Card(
          elevation: 5,
          shadowColor: Colors.blueAccent,
          shape: const CircleBorder(),
          child: CircleAvatar(
            radius: radius,
            backgroundColor: color,
            backgroundImage: AssetImage(image ?? ""),
          ),
        ),
      );
    },
  );
}
