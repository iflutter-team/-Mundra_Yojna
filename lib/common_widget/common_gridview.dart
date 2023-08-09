import 'package:flutter/material.dart';

Widget commonGridView({
  required double radius,
  required Color color,
  void Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: CircleAvatar(
      radius: radius,
      backgroundColor: color,
    ),
  );
}
