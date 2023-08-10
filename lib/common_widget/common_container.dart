import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';

Widget containerCommon(Color color, String text,
    {double? horizontal, double? vertical}) {
  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(25), color: color),
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontal ?? 15, vertical: vertical ?? 15),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
  );
}

Widget cardAllCommon(String text, Color borderColor, {String? title}) {
  return Card(
    elevation: 10,
    shape: OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(25)),
    child: title != null
        ? Column(
            children: [
              verticalSizeBox(10),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.pinkAccent),
                  ),
                ),
              ),
              verticalSizeBox(5),
              SizedBox(
                width: Get.width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ],
          )
        : SizedBox(
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                text,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
  );
}
