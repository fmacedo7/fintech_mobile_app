import 'package:fintech_mobile_app/ui/constants/button_icon_color.dart';
import 'package:flutter/material.dart';

class CustomIconButtonOutlined extends StatelessWidget {
  final IconData? icon;
  final Widget? leftText;
  final Widget? rightText;
  final ButtonStyle? style;
  final double shape;
  final Size? minimumSize;
  final Color backgroundColor;
  final VoidCallback? onClick;
  final Color? borderColor;

  const CustomIconButtonOutlined({
    super.key,
    this.icon,
    this.leftText,
    this.style,
    this.shape = 50,
    this.minimumSize,
    required this.backgroundColor,
    this.onClick,
    this.rightText,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leftText != null) leftText!,
          if (icon != null) Icon(icon),
          if (rightText != null) rightText!,
        ],
      ),
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(
          minimumSize ?? const Size(48, 48),
        ),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(shape),
          ),
        ),
        side: WidgetStateProperty.all<BorderSide>(BorderSide(
          color: borderColor ?? customButtonBackgroundColor,
        )),
        iconColor: WidgetStateProperty.all<Color>(Colors.black),
        backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
      ).merge(style),
      onPressed: onClick,
    );
  }
}
