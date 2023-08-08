import 'package:flutter/material.dart';

Widget containerCommon(
    Color color, String text, double horizontal, double vertical) {
  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(25), color: color),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
  );
}

Widget cardAllCommon(String text, Color borderColor) {
  return Card(
    elevation: 20,
    shape: OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(25)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
  );
}
