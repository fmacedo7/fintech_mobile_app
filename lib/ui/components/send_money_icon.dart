import 'package:flutter/material.dart';
import 'package:fintech_mobile_app/ui/constants/button_icon_color.dart';

class DoubleIcon extends StatelessWidget {
  final Color? backgroundColor;
  final Icon leftIcon;
  final String text;
  final Icon rightIcon;
  final double? fontSize;
  final Color rightIconBackgroundColor;
  final Size? leftBackgroundIconSize;
  final VoidCallback? onClick;
  final EdgeInsetsGeometry? leftIconPadding;
  final double? widthButton;
  final String? infoText;

  const DoubleIcon({
    super.key,
    required this.leftIcon,
    required this.text,
    this.fontSize,
    required this.rightIcon,
    required this.rightIconBackgroundColor,
    this.leftBackgroundIconSize,
    this.onClick,
    this.backgroundColor,
    this.leftIconPadding,
    this.widthButton,
    this.infoText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: widthButton ?? 200,
        height: 70,
        decoration: BoxDecoration(
          color: backgroundColor ?? customButtonBackgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: leftIconPadding ?? EdgeInsets.zero,
                  child: Container(
                    width: leftBackgroundIconSize?.width ?? 70,
                    height: leftBackgroundIconSize?.height ?? 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: leftIcon,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize ?? 18,
                      ),
                    ),
                    infoText != null ?
                    Text(
                      infoText!,
                      style: const TextStyle(fontSize: 9, color: Colors.grey),
                    ) : Container(),
                  ],
                ),
              ],
            ),
            Padding(
              padding: leftIconPadding ?? const EdgeInsets.only(right: 8),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: rightIconBackgroundColor,
                ),
                child: rightIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
