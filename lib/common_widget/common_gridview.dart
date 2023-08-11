import 'package:flutter/material.dart';

Widget commonGridView({
  required double radius,
  Color? color,
  String? image,
  void Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
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
}
