import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/screen/home_screen/home_screen_controller.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final List<Color>? colors;
  final Color? bgColor;
  final Color? textColor;
  final double? minWidth;
  final double? minHeight;
  final FontWeight? fontWeight;
  final onPressed;
  final double? textSize;
  final double? fieldRadius;
  final Color? borderColor;
  final IconData? icon;
  final String? image;
  final String? fontFamily;
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.color,
    this.colors,
    this.bgColor,
    this.textColor,
    this.minWidth,
    this.onPressed,
    this.textSize,
    this.fontWeight,
    this.fieldRadius,
    this.borderColor,
    this.minHeight,
    this.icon,
    this.image,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: minWidth ?? Get.width * 1,
        height: minHeight ?? Get.height * 0.4,
        child: GetBuilder<HomeController>(
          id: "buttonCommon",
          builder: (controller) {
            return ElevatedButton(
              onPressed: () {
                controller.showInter();
                Get.to(onPressed);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: bgColor,
                elevation: 0,
                primary: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(fieldRadius ?? 10),
                ),
                padding: const EdgeInsets.all(1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon != null ? const SizedBox(width: 3) : const SizedBox(),
                  image != null
                      ? Container(
                          height: minHeight ?? Get.height * 0.4 - 20,
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, right: 10),
                          child: Image.asset(
                            image!,
                            fit: BoxFit.fitHeight,
                          ))
                      : const SizedBox(),
                  Text(
                    text,
                    style: TextStyle(
                        color: textColor ?? Colors.blue.shade600,
                        fontSize: textSize ?? 12,
                        fontWeight: fontWeight ?? FontWeight.bold,
                        fontFamily: fontFamily ?? 'Helvetica_normal'),
                  ),
                  icon != null
                      ? Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            icon,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            );
          },
        ));
  }
}
