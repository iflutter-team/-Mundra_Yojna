import 'package:flutter/material.dart';

Widget commonGridView({
  required double radius,
  Color? color,
  String? image,
  void Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: CircleAvatar(
      radius: radius,
      backgroundColor: color,
      backgroundImage: AssetImage(image ?? ""),
    ),
  );
}
